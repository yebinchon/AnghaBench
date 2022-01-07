
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tv_mode {int progressive; int clock; } ;
struct TYPE_10__ {int top; int bottom; } ;
struct intel_tv_connector_state {int bypass_vfilter; TYPE_5__ margins; } ;
struct TYPE_6__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_display_mode {int crtc_hdisplay; int crtc_vdisplay; int flags; int clock; int crtc_clock; char* name; int private_flags; } ;
struct TYPE_7__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; int port_clock; int output_format; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_8__ {int top; int bottom; int right; int left; } ;
struct TYPE_9__ {TYPE_3__ margins; } ;
struct drm_connector_state {TYPE_4__ tv; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int DRM_MODE_FLAG_INTERLACE ;
 int EINVAL ;
 int I915_MODE_FLAG_USE_SCANLINE_COUNTER ;
 int INTEL_OUTPUT_FORMAT_RGB ;
 scalar_t__ IS_I965GM (struct drm_i915_private*) ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 struct tv_mode* intel_tv_mode_find (struct drm_connector_state*) ;
 int intel_tv_mode_to_mode (struct drm_display_mode*,struct tv_mode const*) ;
 int intel_tv_scale_mode_horiz (struct drm_display_mode*,int,int ,int ) ;
 int intel_tv_scale_mode_vert (struct drm_display_mode*,int,int,int) ;
 scalar_t__ intel_tv_source_too_wide (struct drm_i915_private*,int) ;
 int intel_tv_vert_scaling (struct drm_display_mode*,struct drm_connector_state*,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_tv_connector_state* to_intel_tv_connector_state (struct drm_connector_state*) ;

__attribute__((used)) static int
intel_tv_compute_config(struct intel_encoder *encoder,
   struct intel_crtc_state *pipe_config,
   struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_tv_connector_state *tv_conn_state =
  to_intel_tv_connector_state(conn_state);
 const struct tv_mode *tv_mode = intel_tv_mode_find(conn_state);
 struct drm_display_mode *adjusted_mode =
  &pipe_config->base.adjusted_mode;
 int hdisplay = adjusted_mode->crtc_hdisplay;
 int vdisplay = adjusted_mode->crtc_vdisplay;

 if (!tv_mode)
  return -EINVAL;

 if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return -EINVAL;

 pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;

 DRM_DEBUG_KMS("forcing bpc to 8 for TV\n");
 pipe_config->pipe_bpp = 8*3;

 pipe_config->port_clock = tv_mode->clock;

 intel_tv_mode_to_mode(adjusted_mode, tv_mode);
 drm_mode_set_crtcinfo(adjusted_mode, 0);

 if (intel_tv_source_too_wide(dev_priv, hdisplay) ||
     !intel_tv_vert_scaling(adjusted_mode, conn_state, vdisplay)) {
  int extra, top, bottom;

  extra = adjusted_mode->crtc_vdisplay - vdisplay;

  if (extra < 0) {
   DRM_DEBUG_KMS("No vertical scaling for >1024 pixel wide modes\n");
   return -EINVAL;
  }




  top = conn_state->tv.margins.top;
  bottom = conn_state->tv.margins.bottom;

  if (top + bottom)
   top = extra * top / (top + bottom);
  else
   top = extra / 2;
  bottom = extra - top;

  tv_conn_state->margins.top = top;
  tv_conn_state->margins.bottom = bottom;

  tv_conn_state->bypass_vfilter = 1;

  if (!tv_mode->progressive) {
   adjusted_mode->clock /= 2;
   adjusted_mode->crtc_clock /= 2;
   adjusted_mode->flags |= DRM_MODE_FLAG_INTERLACE;
  }
 } else {
  tv_conn_state->margins.top = conn_state->tv.margins.top;
  tv_conn_state->margins.bottom = conn_state->tv.margins.bottom;

  tv_conn_state->bypass_vfilter = 0;
 }

 DRM_DEBUG_KMS("TV mode:\n");
 drm_mode_debug_printmodeline(adjusted_mode);
 intel_tv_scale_mode_horiz(adjusted_mode, hdisplay,
      conn_state->tv.margins.left,
      conn_state->tv.margins.right);
 intel_tv_scale_mode_vert(adjusted_mode, vdisplay,
     tv_conn_state->margins.top,
     tv_conn_state->margins.bottom);
 drm_mode_set_crtcinfo(adjusted_mode, 0);
 adjusted_mode->name[0] = '\0';


 if (IS_I965GM(dev_priv))
  adjusted_mode->private_flags |=
   I915_MODE_FLAG_USE_SCANLINE_COUNTER;

 return 0;
}
