
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_display_mode {int crtc_hdisplay; int crtc_vdisplay; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_src_h; int pipe_src_w; TYPE_1__ base; } ;


 int HORIZ_AUTO_SCALE ;
 int HORIZ_INTERP_BILINEAR ;
 int LVDS_BORDER_ENABLE ;
 int PFIT_ENABLE ;
 int PFIT_HORIZ_SCALE_SHIFT ;
 int PFIT_VERT_SCALE_SHIFT ;
 int VERT_AUTO_SCALE ;
 int VERT_INTERP_BILINEAR ;
 int centre_horizontally (struct drm_display_mode*,int) ;
 int centre_vertically (struct drm_display_mode*,int) ;
 int panel_fitter_scaling (int,int) ;

__attribute__((used)) static void i9xx_scale_aspect(struct intel_crtc_state *pipe_config,
         u32 *pfit_control, u32 *pfit_pgm_ratios,
         u32 *border)
{
 struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
 u32 scaled_width = adjusted_mode->crtc_hdisplay *
  pipe_config->pipe_src_h;
 u32 scaled_height = pipe_config->pipe_src_w *
  adjusted_mode->crtc_vdisplay;
 u32 bits;






 if (scaled_width > scaled_height) {
  centre_horizontally(adjusted_mode,
        scaled_height /
        pipe_config->pipe_src_h);

  *border = LVDS_BORDER_ENABLE;
  if (pipe_config->pipe_src_h != adjusted_mode->crtc_vdisplay) {
   bits = panel_fitter_scaling(pipe_config->pipe_src_h,
          adjusted_mode->crtc_vdisplay);

   *pfit_pgm_ratios |= (bits << PFIT_HORIZ_SCALE_SHIFT |
          bits << PFIT_VERT_SCALE_SHIFT);
   *pfit_control |= (PFIT_ENABLE |
       VERT_INTERP_BILINEAR |
       HORIZ_INTERP_BILINEAR);
  }
 } else if (scaled_width < scaled_height) {
  centre_vertically(adjusted_mode,
      scaled_width /
      pipe_config->pipe_src_w);

  *border = LVDS_BORDER_ENABLE;
  if (pipe_config->pipe_src_w != adjusted_mode->crtc_hdisplay) {
   bits = panel_fitter_scaling(pipe_config->pipe_src_w,
          adjusted_mode->crtc_hdisplay);

   *pfit_pgm_ratios |= (bits << PFIT_HORIZ_SCALE_SHIFT |
          bits << PFIT_VERT_SCALE_SHIFT);
   *pfit_control |= (PFIT_ENABLE |
       VERT_INTERP_BILINEAR |
       HORIZ_INTERP_BILINEAR);
  }
 } else {

  *pfit_control |= (PFIT_ENABLE |
      VERT_AUTO_SCALE | HORIZ_AUTO_SCALE |
      VERT_INTERP_BILINEAR |
      HORIZ_INTERP_BILINEAR);
 }
}
