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
struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct exynos_drm_crtc {struct drm_crtc base; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct exynos_drm_crtc *exynos_crtc)
{
	struct drm_crtc *crtc = &exynos_crtc->base;
	struct drm_pending_vblank_event *event = crtc->state->event;
	unsigned long flags;

	if (!event)
		return;
	crtc->state->event = NULL;

	FUNC0(FUNC2(crtc) != 0);

	FUNC3(&crtc->dev->event_lock, flags);
	FUNC1(crtc, event);
	FUNC4(&crtc->dev->event_lock, flags);
}