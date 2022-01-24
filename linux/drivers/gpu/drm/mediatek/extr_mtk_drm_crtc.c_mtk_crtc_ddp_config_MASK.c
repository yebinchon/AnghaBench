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
struct TYPE_4__ {int config; } ;
struct mtk_plane_state {TYPE_2__ pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct mtk_drm_crtc {int pending_planes; unsigned int layer_nr; struct drm_plane* planes; struct mtk_ddp_comp** ddp_comp; TYPE_1__ base; } ;
struct mtk_ddp_comp {int dummy; } ;
struct mtk_crtc_state {int pending_config; int /*<<< orphan*/  pending_vrefresh; int /*<<< orphan*/  pending_height; int /*<<< orphan*/  pending_width; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_ddp_comp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_ddp_comp*,unsigned int,struct mtk_plane_state*) ; 
 struct mtk_drm_crtc* FUNC2 (struct drm_crtc*) ; 
 struct mtk_crtc_state* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mtk_plane_state* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc)
{
	struct mtk_drm_crtc *mtk_crtc = FUNC2(crtc);
	struct mtk_crtc_state *state = FUNC3(mtk_crtc->base.state);
	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
	unsigned int i;

	/*
	 * TODO: instead of updating the registers here, we should prepare
	 * working registers in atomic_commit and let the hardware command
	 * queue update module registers on vblank.
	 */
	if (state->pending_config) {
		FUNC0(comp, state->pending_width,
				    state->pending_height,
				    state->pending_vrefresh, 0);

		state->pending_config = false;
	}

	if (mtk_crtc->pending_planes) {
		for (i = 0; i < mtk_crtc->layer_nr; i++) {
			struct drm_plane *plane = &mtk_crtc->planes[i];
			struct mtk_plane_state *plane_state;

			plane_state = FUNC4(plane->state);

			if (plane_state->pending.config) {
				FUNC1(comp, i, plane_state);
				plane_state->pending.config = false;
			}
		}
		mtk_crtc->pending_planes = false;
	}
}