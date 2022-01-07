
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_encoder {int dummy; } ;
struct mdfld_dsi_config {struct drm_display_mode* fixed_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; int vtotal; int vsync_end; int vsync_start; int vdisplay; int htotal; int hsync_end; int hsync_start; int hdisplay; } ;


 int CRTC_INTERLACE_HALVE_V ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 struct mdfld_dsi_encoder* mdfld_dsi_encoder (struct drm_encoder*) ;
 struct mdfld_dsi_config* mdfld_dsi_encoder_get_config (struct mdfld_dsi_encoder*) ;

bool mdfld_dsi_dpi_mode_fixup(struct drm_encoder *encoder,
         const struct drm_display_mode *mode,
         struct drm_display_mode *adjusted_mode)
{
 struct mdfld_dsi_encoder *dsi_encoder = mdfld_dsi_encoder(encoder);
 struct mdfld_dsi_config *dsi_config =
    mdfld_dsi_encoder_get_config(dsi_encoder);
 struct drm_display_mode *fixed_mode = dsi_config->fixed_mode;

 if (fixed_mode) {
  adjusted_mode->hdisplay = fixed_mode->hdisplay;
  adjusted_mode->hsync_start = fixed_mode->hsync_start;
  adjusted_mode->hsync_end = fixed_mode->hsync_end;
  adjusted_mode->htotal = fixed_mode->htotal;
  adjusted_mode->vdisplay = fixed_mode->vdisplay;
  adjusted_mode->vsync_start = fixed_mode->vsync_start;
  adjusted_mode->vsync_end = fixed_mode->vsync_end;
  adjusted_mode->vtotal = fixed_mode->vtotal;
  adjusted_mode->clock = fixed_mode->clock;
  drm_mode_set_crtcinfo(adjusted_mode, CRTC_INTERLACE_HALVE_V);
 }
 return 1;
}
