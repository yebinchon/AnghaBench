
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_config {struct drm_display_mode* mode; struct drm_device* dev; } ;
struct drm_display_mode {int htotal; int hdisplay; int hsync_end; int hsync_start; int vtotal; int vdisplay; int vsync_end; int vsync_start; } ;
struct drm_device {int dummy; } ;


 int HBLANK_A ;
 int HSYNC_A ;
 int HTOTAL_A ;
 int PIPEASRC ;
 int REG_WRITE (int ,int) ;
 int VBLANK_A ;
 int VSYNC_A ;
 int VTOTAL_A ;

__attribute__((used)) static void mdfld_set_pipe_timing(struct mdfld_dsi_config *dsi_config, int pipe)
{
 struct drm_device *dev = dsi_config->dev;
 struct drm_display_mode *mode = dsi_config->mode;

 REG_WRITE(HTOTAL_A, ((mode->htotal - 1) << 16) | (mode->hdisplay - 1));
 REG_WRITE(HBLANK_A, ((mode->htotal - 1) << 16) | (mode->hdisplay - 1));
 REG_WRITE(HSYNC_A,
  ((mode->hsync_end - 1) << 16) | (mode->hsync_start - 1));

 REG_WRITE(VTOTAL_A, ((mode->vtotal - 1) << 16) | (mode->vdisplay - 1));
 REG_WRITE(VBLANK_A, ((mode->vtotal - 1) << 16) | (mode->vdisplay - 1));
 REG_WRITE(VSYNC_A,
  ((mode->vsync_end - 1) << 16) | (mode->vsync_start - 1));

 REG_WRITE(PIPEASRC,
  ((mode->hdisplay - 1) << 16) | (mode->vdisplay - 1));
}
