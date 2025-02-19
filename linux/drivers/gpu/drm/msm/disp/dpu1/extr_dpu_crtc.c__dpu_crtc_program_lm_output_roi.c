
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_rect {int dummy; } ;
struct drm_crtc {int state; } ;
struct dpu_hw_mixer_cfg {scalar_t__ flags; int right_mixer; int out_height; int out_width; } ;
struct TYPE_4__ {int (* setup_mixer_out ) (struct dpu_hw_mixer*,struct dpu_hw_mixer_cfg*) ;} ;
struct dpu_hw_mixer {TYPE_2__ ops; } ;
struct dpu_crtc_state {int num_mixers; TYPE_1__* mixers; struct drm_rect* lm_bounds; } ;
struct dpu_crtc {int dummy; } ;
struct TYPE_3__ {struct dpu_hw_mixer* hw_lm; } ;


 int drm_rect_height (struct drm_rect const*) ;
 int drm_rect_visible (struct drm_rect const*) ;
 int drm_rect_width (struct drm_rect const*) ;
 int stub1 (struct dpu_hw_mixer*,struct dpu_hw_mixer_cfg*) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;
 struct dpu_crtc_state* to_dpu_crtc_state (int ) ;

__attribute__((used)) static void _dpu_crtc_program_lm_output_roi(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc;
 struct dpu_crtc_state *crtc_state;
 int lm_idx, lm_horiz_position;

 dpu_crtc = to_dpu_crtc(crtc);
 crtc_state = to_dpu_crtc_state(crtc->state);

 lm_horiz_position = 0;
 for (lm_idx = 0; lm_idx < crtc_state->num_mixers; lm_idx++) {
  const struct drm_rect *lm_roi = &crtc_state->lm_bounds[lm_idx];
  struct dpu_hw_mixer *hw_lm = crtc_state->mixers[lm_idx].hw_lm;
  struct dpu_hw_mixer_cfg cfg;

  if (!lm_roi || !drm_rect_visible(lm_roi))
   continue;

  cfg.out_width = drm_rect_width(lm_roi);
  cfg.out_height = drm_rect_height(lm_roi);
  cfg.right_mixer = lm_horiz_position++;
  cfg.flags = 0;
  hw_lm->ops.setup_mixer_out(hw_lm, &cfg);
 }
}
