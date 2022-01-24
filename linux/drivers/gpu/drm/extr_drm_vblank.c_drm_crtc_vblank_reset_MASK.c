#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_vblank_crtc {int inmodeset; int /*<<< orphan*/  refcount; } ;
struct drm_device {int /*<<< orphan*/  vblank_event_list; int /*<<< orphan*/  vbl_lock; struct drm_vblank_crtc* vblank; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	unsigned long irqflags;
	unsigned int pipe = FUNC2(crtc);
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

	FUNC4(&dev->vbl_lock, irqflags);
	/*
	 * Prevent subsequent drm_vblank_get() from enabling the vblank
	 * interrupt by bumping the refcount.
	 */
	if (!vblank->inmodeset) {
		FUNC1(&vblank->refcount);
		vblank->inmodeset = 1;
	}
	FUNC5(&dev->vbl_lock, irqflags);

	FUNC0(!FUNC3(&dev->vblank_event_list));
}