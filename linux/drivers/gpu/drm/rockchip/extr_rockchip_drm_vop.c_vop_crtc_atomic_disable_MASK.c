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
struct vop {int is_enabled; int /*<<< orphan*/  vop_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  dclk; int /*<<< orphan*/  drm_dev; int /*<<< orphan*/  dsp_hold_completion; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  event; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  active; scalar_t__ self_refresh_active; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  common ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  standby ; 
 struct vop* FUNC15 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC16 (struct vop*) ; 
 int /*<<< orphan*/  FUNC17 (struct vop*) ; 
 int /*<<< orphan*/  FUNC18 (struct vop*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_state)
{
	struct vop *vop = FUNC15(crtc);

	FUNC1(vop->event);

	if (crtc->state->self_refresh_active)
		FUNC10(crtc, false);

	FUNC5(&vop->vop_lock);

	FUNC4(crtc);

	if (crtc->state->self_refresh_active)
		goto out;

	/*
	 * Vop standby will take effect at end of current frame,
	 * if dsp hold valid irq happen, it means standby complete.
	 *
	 * we must wait standby complete when we want to disable aclk,
	 * if not, memory bus maybe dead.
	 */
	FUNC8(&vop->dsp_hold_completion);
	FUNC18(vop);

	FUNC11(&vop->reg_lock);

	FUNC0(vop, common, standby, 1);

	FUNC13(&vop->reg_lock);

	FUNC19(&vop->dsp_hold_completion);

	FUNC17(vop);

	vop->is_enabled = false;

	/*
	 * vop standby complete, so iommu detach is safe.
	 */
	FUNC9(vop->drm_dev, vop->dev);

	FUNC2(vop->dclk);
	FUNC16(vop);
	FUNC7(vop->dev);

out:
	FUNC6(&vop->vop_lock);

	if (crtc->state->event && !crtc->state->active) {
		FUNC12(&crtc->dev->event_lock);
		FUNC3(crtc, crtc->state->event);
		FUNC14(&crtc->dev->event_lock);

		crtc->state->event = NULL;
	}
}