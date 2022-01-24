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
struct drm_vblank_crtc {int /*<<< orphan*/  refcount; scalar_t__ inmodeset; int /*<<< orphan*/  enabled; } ;
struct drm_device {unsigned int num_crtcs; int /*<<< orphan*/  vbl_lock; struct drm_vblank_crtc* vblank; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,unsigned int) ; 
 int FUNC6 (struct drm_device*,unsigned int) ; 
 scalar_t__ drm_vblank_offdelay ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	unsigned int pipe = FUNC4(crtc);
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	unsigned long irqflags;

	if (FUNC1(pipe >= dev->num_crtcs))
		return;

	FUNC7(&dev->vbl_lock, irqflags);
	FUNC0("crtc %d, vblank enabled %d, inmodeset %d\n",
		      pipe, vblank->enabled, vblank->inmodeset);

	/* Drop our private "prevent drm_vblank_get" refcount */
	if (vblank->inmodeset) {
		FUNC2(&vblank->refcount);
		vblank->inmodeset = 0;
	}

	FUNC5(dev, pipe);

	/*
	 * re-enable interrupts if there are users left, or the
	 * user wishes vblank interrupts to be enabled all the time.
	 */
	if (FUNC3(&vblank->refcount) != 0 || drm_vblank_offdelay == 0)
		FUNC1(FUNC6(dev, pipe));
	FUNC8(&dev->vbl_lock, irqflags);
}