#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Power_6 device
$(call inherit-product, device/ulefone/Power_6/device.mk)

PRODUCT_DEVICE := Power_6
PRODUCT_NAME := omni_Power_6
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Power_6
PRODUCT_MANUFACTURER := ulefone

PRODUCT_GMS_CLIENTID_BASE := android-gotron

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k65v1_64_bsp-user 9 PPR1.180610.011 eng.releas.20191013.102511 release-keys"

BUILD_FINGERPRINT := Ulefone/Power_6_EEA/Power_6:9/PPR1.180610.011/1570858889:user/release-keys
