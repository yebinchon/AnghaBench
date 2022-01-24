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
struct fsl_dcu_drm_device {int /*<<< orphan*/  regmap; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; struct fsl_dcu_drm_device* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_pending_vblank_event* event; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCU_UPDATE_MODE ; 
 int /*<<< orphan*/  DCU_UPDATE_MODE_READREG ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
					  struct drm_crtc_state *old_crtc_state)
{
	struct drm_device *dev = crtc->dev;
	struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;
	struct drm_pending_vblank_event *event = crtc->state->event;

	FUNC3(fsl_dev->regmap,
		     DCU_UPDATE_MODE, DCU_UPDATE_MODE_READREG);

	if (event) {
		crtc->state->event = NULL;

		FUNC4(&crtc->dev->event_lock);
		if (FUNC2(crtc) == 0)
			FUNC0(crtc, event);
		else
			FUNC1(crtc, event);
		FUNC5(&crtc->dev->event_lock);
	}
}