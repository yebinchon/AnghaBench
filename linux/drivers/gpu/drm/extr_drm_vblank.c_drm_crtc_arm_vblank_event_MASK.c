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
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct drm_pending_vblank_event {unsigned int pipe; TYPE_1__ base; scalar_t__ sequence; } ;
struct drm_device {int /*<<< orphan*/  vblank_event_list; int /*<<< orphan*/  event_lock; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_crtc*) ; 
 unsigned int FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_crtc *crtc,
			       struct drm_pending_vblank_event *e)
{
	struct drm_device *dev = crtc->dev;
	unsigned int pipe = FUNC2(crtc);

	FUNC0(&dev->event_lock);

	e->pipe = pipe;
	e->sequence = FUNC1(crtc) + 1;
	FUNC3(&e->base.link, &dev->vblank_event_list);
}