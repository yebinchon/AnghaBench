
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int pos; int size; int enabled; } ;
struct drm_display_mode {scalar_t__ crtc_hdisplay; scalar_t__ crtc_vdisplay; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {scalar_t__ pipe_src_w; scalar_t__ pipe_src_h; scalar_t__ output_format; TYPE_2__ pch_pfit; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;





 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;
 int WARN (int,char*,int) ;

void
intel_pch_panel_fitting(struct intel_crtc *intel_crtc,
   struct intel_crtc_state *pipe_config,
   int fitting_mode)
{
 const struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
 int x = 0, y = 0, width = 0, height = 0;


 if (adjusted_mode->crtc_hdisplay == pipe_config->pipe_src_w &&
     adjusted_mode->crtc_vdisplay == pipe_config->pipe_src_h &&
     pipe_config->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
  goto done;

 switch (fitting_mode) {
 case 129:
  width = pipe_config->pipe_src_w;
  height = pipe_config->pipe_src_h;
  x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
  y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
  break;

 case 130:

  {
   u32 scaled_width = adjusted_mode->crtc_hdisplay
    * pipe_config->pipe_src_h;
   u32 scaled_height = pipe_config->pipe_src_w
    * adjusted_mode->crtc_vdisplay;
   if (scaled_width > scaled_height) {
    width = scaled_height / pipe_config->pipe_src_h;
    if (width & 1)
     width++;
    x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
    y = 0;
    height = adjusted_mode->crtc_vdisplay;
   } else if (scaled_width < scaled_height) {
    height = scaled_width / pipe_config->pipe_src_w;
    if (height & 1)
        height++;
    y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
    x = 0;
    width = adjusted_mode->crtc_hdisplay;
   } else {
    x = y = 0;
    width = adjusted_mode->crtc_hdisplay;
    height = adjusted_mode->crtc_vdisplay;
   }
  }
  break;

 case 128:
  x = y = 0;
  width = adjusted_mode->crtc_hdisplay;
  height = adjusted_mode->crtc_vdisplay;
  break;

 default:
  WARN(1, "bad panel fit mode: %d\n", fitting_mode);
  return;
 }

done:
 pipe_config->pch_pfit.pos = (x << 16) | y;
 pipe_config->pch_pfit.size = (width << 16) | height;
 pipe_config->pch_pfit.enabled = pipe_config->pch_pfit.size != 0;
}
