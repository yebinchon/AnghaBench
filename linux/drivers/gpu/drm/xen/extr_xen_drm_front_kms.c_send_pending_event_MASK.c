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
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_crtc crtc; } ;
struct xen_drm_front_drm_pipeline {int /*<<< orphan*/ * pending_event; TYPE_1__ pipe; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct xen_drm_front_drm_pipeline *pipeline)
{
	struct drm_crtc *crtc = &pipeline->pipe.crtc;
	struct drm_device *dev = crtc->dev;
	unsigned long flags;

	FUNC1(&dev->event_lock, flags);
	if (pipeline->pending_event)
		FUNC0(crtc, pipeline->pending_event);
	pipeline->pending_event = NULL;
	FUNC2(&dev->event_lock, flags);
}