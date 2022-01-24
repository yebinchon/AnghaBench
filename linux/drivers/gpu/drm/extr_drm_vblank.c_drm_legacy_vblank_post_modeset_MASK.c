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
struct drm_vblank_crtc {int inmodeset; } ;
struct drm_device {unsigned int num_crtcs; int /*<<< orphan*/  vbl_lock; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev,
					   unsigned int pipe)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	unsigned long irqflags;

	/* vblank is not initialized (IRQ not installed ?), or has been freed */
	if (!dev->num_crtcs)
		return;

	if (FUNC0(pipe >= dev->num_crtcs))
		return;

	if (vblank->inmodeset) {
		FUNC3(&dev->vbl_lock, irqflags);
		FUNC1(dev, pipe);
		FUNC4(&dev->vbl_lock, irqflags);

		if (vblank->inmodeset & 0x2)
			FUNC2(dev, pipe);

		vblank->inmodeset = 0;
	}
}