#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct drm_device* dev; } ;
struct rcar_du_crtc {TYPE_1__ crtc; int /*<<< orphan*/  flip_wait; struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rcar_du_crtc *rcrtc)
{
	struct drm_pending_vblank_event *event;
	struct drm_device *dev = rcrtc->crtc.dev;
	unsigned long flags;

	FUNC2(&dev->event_lock, flags);
	event = rcrtc->event;
	rcrtc->event = NULL;
	FUNC3(&dev->event_lock, flags);

	if (event == NULL)
		return;

	FUNC2(&dev->event_lock, flags);
	FUNC0(&rcrtc->crtc, event);
	FUNC4(&rcrtc->flip_wait);
	FUNC3(&dev->event_lock, flags);

	FUNC1(&rcrtc->crtc);
}