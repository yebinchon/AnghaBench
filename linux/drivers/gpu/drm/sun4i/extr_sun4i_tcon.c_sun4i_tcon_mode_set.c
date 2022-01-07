
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tcon {int dummy; } ;
struct drm_encoder {int encoder_type; } ;
struct drm_display_mode {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;





 int sun4i_tcon0_mode_set_cpu (struct sun4i_tcon*,struct drm_encoder const*,struct drm_display_mode const*) ;
 int sun4i_tcon0_mode_set_lvds (struct sun4i_tcon*,struct drm_encoder const*,struct drm_display_mode const*) ;
 int sun4i_tcon0_mode_set_rgb (struct sun4i_tcon*,struct drm_encoder const*,struct drm_display_mode const*) ;
 int sun4i_tcon1_mode_set (struct sun4i_tcon*,struct drm_display_mode const*) ;
 int sun4i_tcon_set_mux (struct sun4i_tcon*,int,struct drm_encoder const*) ;

void sun4i_tcon_mode_set(struct sun4i_tcon *tcon,
    const struct drm_encoder *encoder,
    const struct drm_display_mode *mode)
{
 switch (encoder->encoder_type) {
 case 132:

  sun4i_tcon0_mode_set_cpu(tcon, encoder, mode);
  break;
 case 131:
  sun4i_tcon0_mode_set_lvds(tcon, encoder, mode);
  break;
 case 130:
  sun4i_tcon0_mode_set_rgb(tcon, encoder, mode);
  sun4i_tcon_set_mux(tcon, 0, encoder);
  break;
 case 128:
 case 129:
  sun4i_tcon1_mode_set(tcon, mode);
  sun4i_tcon_set_mux(tcon, 1, encoder);
  break;
 default:
  DRM_DEBUG_DRIVER("Unknown encoder type, doing nothing...\n");
 }
}
