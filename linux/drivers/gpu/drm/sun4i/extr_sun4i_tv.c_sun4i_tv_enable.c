
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tv {int regs; } ;
struct sun4i_crtc {int engine; } ;
struct drm_encoder {int crtc; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_TVE_EN_ENABLE ;
 int SUN4I_TVE_EN_REG ;
 struct sun4i_crtc* drm_crtc_to_sun4i_crtc (int ) ;
 struct sun4i_tv* drm_encoder_to_sun4i_tv (struct drm_encoder*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int sunxi_engine_apply_color_correction (int ) ;

__attribute__((used)) static void sun4i_tv_enable(struct drm_encoder *encoder)
{
 struct sun4i_tv *tv = drm_encoder_to_sun4i_tv(encoder);
 struct sun4i_crtc *crtc = drm_crtc_to_sun4i_crtc(encoder->crtc);

 DRM_DEBUG_DRIVER("Enabling the TV Output\n");

 sunxi_engine_apply_color_correction(crtc->engine);

 regmap_update_bits(tv->regs, SUN4I_TVE_EN_REG,
      SUN4I_TVE_EN_ENABLE,
      SUN4I_TVE_EN_ENABLE);
}
