
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crtc_clock; int flags; int crtc_vsync_end; int crtc_vsync_start; int crtc_vtotal; int crtc_vdisplay; int crtc_hsync_end; int crtc_hsync_start; int crtc_htotal; int crtc_hdisplay; } ;
struct TYPE_4__ {TYPE_1__ adjusted_mode; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_display_mode {int vrefresh; int hsync; int clock; int type; int flags; int vsync_end; int vsync_start; int vtotal; int vdisplay; int hsync_end; int hsync_start; int htotal; int hdisplay; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int drm_mode_hsync (struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 int drm_mode_vrefresh (struct drm_display_mode*) ;

void intel_mode_from_pipe_config(struct drm_display_mode *mode,
     struct intel_crtc_state *pipe_config)
{
 mode->hdisplay = pipe_config->base.adjusted_mode.crtc_hdisplay;
 mode->htotal = pipe_config->base.adjusted_mode.crtc_htotal;
 mode->hsync_start = pipe_config->base.adjusted_mode.crtc_hsync_start;
 mode->hsync_end = pipe_config->base.adjusted_mode.crtc_hsync_end;

 mode->vdisplay = pipe_config->base.adjusted_mode.crtc_vdisplay;
 mode->vtotal = pipe_config->base.adjusted_mode.crtc_vtotal;
 mode->vsync_start = pipe_config->base.adjusted_mode.crtc_vsync_start;
 mode->vsync_end = pipe_config->base.adjusted_mode.crtc_vsync_end;

 mode->flags = pipe_config->base.adjusted_mode.flags;
 mode->type = DRM_MODE_TYPE_DRIVER;

 mode->clock = pipe_config->base.adjusted_mode.crtc_clock;

 mode->hsync = drm_mode_hsync(mode);
 mode->vrefresh = drm_mode_vrefresh(mode);
 drm_mode_set_name(mode);
}
