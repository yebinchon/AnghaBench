
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int DRM_MODE_DPMS_OFF ;
 int drm_i2c_encoder_dpms (struct drm_encoder*,int ) ;

void drm_i2c_encoder_prepare(struct drm_encoder *encoder)
{
 drm_i2c_encoder_dpms(encoder, DRM_MODE_DPMS_OFF);
}
