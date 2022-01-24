#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dirty; int config; } ;
struct mtk_plane_state {TYPE_2__ pending; } ;
struct mtk_drm_private {TYPE_3__* data; } ;
struct mtk_drm_crtc {int pending_needs_vblank; int layer_nr; int pending_planes; int ddp_comp_nr; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * ddp_comp; struct drm_plane* planes; scalar_t__ event; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_4__* state; TYPE_1__* dev; } ;
struct TYPE_8__ {scalar_t__ color_mgmt_changed; } ;
struct TYPE_7__ {scalar_t__ shadow_register; } ;
struct TYPE_5__ {struct mtk_drm_private* dev_private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mtk_drm_crtc* FUNC5 (struct drm_crtc*) ; 
 struct mtk_plane_state* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc,
				      struct drm_crtc_state *old_crtc_state)
{
	struct mtk_drm_crtc *mtk_crtc = FUNC5(crtc);
	struct mtk_drm_private *priv = crtc->dev->dev_private;
	unsigned int pending_planes = 0;
	int i;

	if (mtk_crtc->event)
		mtk_crtc->pending_needs_vblank = true;
	for (i = 0; i < mtk_crtc->layer_nr; i++) {
		struct drm_plane *plane = &mtk_crtc->planes[i];
		struct mtk_plane_state *plane_state;

		plane_state = FUNC6(plane->state);
		if (plane_state->pending.dirty) {
			plane_state->pending.config = true;
			plane_state->pending.dirty = false;
			pending_planes |= FUNC0(i);
		}
	}
	if (pending_planes)
		mtk_crtc->pending_planes = true;
	if (crtc->state->color_mgmt_changed)
		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
			FUNC2(mtk_crtc->ddp_comp[i], crtc->state);

	if (priv->data->shadow_register) {
		FUNC3(mtk_crtc->mutex);
		FUNC1(crtc);
		FUNC4(mtk_crtc->mutex);
	}
}