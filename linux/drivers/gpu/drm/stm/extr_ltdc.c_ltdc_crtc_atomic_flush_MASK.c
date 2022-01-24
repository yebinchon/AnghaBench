#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ltdc_device {int /*<<< orphan*/  regs; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_pending_vblank_event* event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LTDC_SRCR ; 
 int /*<<< orphan*/  SRCR_VBR ; 
 struct ltdc_device* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_crtc_state)
{
	struct ltdc_device *ldev = FUNC1(crtc);
	struct drm_device *ddev = crtc->dev;
	struct drm_pending_vblank_event *event = crtc->state->event;

	FUNC0("\n");

	FUNC5(crtc);

	/* Commit shadow registers = update planes at next vblank */
	FUNC6(ldev->regs, LTDC_SRCR, SRCR_VBR);

	if (event) {
		crtc->state->event = NULL;

		FUNC7(&ddev->event_lock);
		if (FUNC4(crtc) == 0)
			FUNC2(crtc, event);
		else
			FUNC3(crtc, event);
		FUNC8(&ddev->event_lock);
	}
}