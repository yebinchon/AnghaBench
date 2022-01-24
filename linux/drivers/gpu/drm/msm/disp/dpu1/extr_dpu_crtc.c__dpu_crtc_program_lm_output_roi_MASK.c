#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_rect {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;
struct dpu_hw_mixer_cfg {scalar_t__ flags; int /*<<< orphan*/  right_mixer; int /*<<< orphan*/  out_height; int /*<<< orphan*/  out_width; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* setup_mixer_out ) (struct dpu_hw_mixer*,struct dpu_hw_mixer_cfg*) ;} ;
struct dpu_hw_mixer {TYPE_2__ ops; } ;
struct dpu_crtc_state {int num_mixers; TYPE_1__* mixers; struct drm_rect* lm_bounds; } ;
struct dpu_crtc {int dummy; } ;
struct TYPE_3__ {struct dpu_hw_mixer* hw_lm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_rect const*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_rect const*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_rect const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_hw_mixer*,struct dpu_hw_mixer_cfg*) ; 
 struct dpu_crtc* FUNC4 (struct drm_crtc*) ; 
 struct dpu_crtc_state* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc)
{
	struct dpu_crtc *dpu_crtc;
	struct dpu_crtc_state *crtc_state;
	int lm_idx, lm_horiz_position;

	dpu_crtc = FUNC4(crtc);
	crtc_state = FUNC5(crtc->state);

	lm_horiz_position = 0;
	for (lm_idx = 0; lm_idx < crtc_state->num_mixers; lm_idx++) {
		const struct drm_rect *lm_roi = &crtc_state->lm_bounds[lm_idx];
		struct dpu_hw_mixer *hw_lm = crtc_state->mixers[lm_idx].hw_lm;
		struct dpu_hw_mixer_cfg cfg;

		if (!lm_roi || !FUNC1(lm_roi))
			continue;

		cfg.out_width = FUNC2(lm_roi);
		cfg.out_height = FUNC0(lm_roi);
		cfg.right_mixer = lm_horiz_position++;
		cfg.flags = 0;
		hw_lm->ops.setup_mixer_out(hw_lm, &cfg);
	}
}