$(call inherit-product, device/semc/es209ra/full_es209ra.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Camera
PRODUCT_PACKAGES += \
    Camera

#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation.zip

#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/xhdpi/AoCPOTA.apk:system/app/AoCPOTA.apk

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=X10i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.1.1/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.1.1 4.1.C.0.7 -H9_3w test-keys"

PRODUCT_NAME := aocp_es209ra
PRODUCT_DEVICE := es209ra
