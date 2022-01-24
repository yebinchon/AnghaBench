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
struct shmob_drm_crtc {TYPE_1__ crtc; struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct shmob_drm_crtc *scrtc)
{
	struct drm_pending_vblank_event *event;
	struct drm_device *dev = scrtc->crtc.dev;
	unsigned long flags;

	FUNC2(&dev->event_lock, flags);
	event = scrtc->event;
	scrtc->event = NULL;
	if (event) {
		FUNC0(&scrtc->crtc, event);
		FUNC1(&scrtc->crtc);
	}
	FUNC3(&dev->event_lock, flags);
}