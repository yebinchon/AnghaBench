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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct shmob_drm_crtc {struct drm_pending_vblank_event* event; TYPE_2__ crtc; } ;
struct drm_pending_vblank_event {scalar_t__ pipe; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc {TYPE_1__* primary; } ;
struct TYPE_3__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct shmob_drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct shmob_drm_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC5(struct drm_crtc *crtc,
				    struct drm_framebuffer *fb,
				    struct drm_pending_vblank_event *event,
				    uint32_t page_flip_flags,
				    struct drm_modeset_acquire_ctx *ctx)
{
	struct shmob_drm_crtc *scrtc = FUNC4(crtc);
	struct drm_device *dev = scrtc->crtc.dev;
	unsigned long flags;

	FUNC2(&dev->event_lock, flags);
	if (scrtc->event != NULL) {
		FUNC3(&dev->event_lock, flags);
		return -EBUSY;
	}
	FUNC3(&dev->event_lock, flags);

	crtc->primary->fb = fb;
	FUNC1(scrtc);

	if (event) {
		event->pipe = 0;
		FUNC0(&scrtc->crtc);
		FUNC2(&dev->event_lock, flags);
		scrtc->event = event;
		FUNC3(&dev->event_lock, flags);
	}

	return 0;
}