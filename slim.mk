#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-I9082

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
PRODUCT_COPY_FILES +=  \
     vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip


# Inherit some common CM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9082/full_i9082.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9082
PRODUCT_NAME := slim_i9082
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9082

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=baffinxx TARGET_DEVICE=baffin BUILD_FINGERPRINT=samsung/baffinxx/baffin:4.1.2/JZO54K/I9082LDCAMC2:user/release-keys PRIVATE_BUILD_DESC="baffinxx-user 4.1.2 JZO54K I9082LDCAMC2 release-keys"
