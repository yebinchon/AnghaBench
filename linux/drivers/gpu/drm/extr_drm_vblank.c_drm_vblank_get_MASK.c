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
struct drm_vblank_crtc {int /*<<< orphan*/  refcount; int /*<<< orphan*/  enabled; } ;
struct drm_device {unsigned int num_crtcs; int /*<<< orphan*/  vbl_lock; struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev, unsigned int pipe)
{
	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
	unsigned long irqflags;
	int ret = 0;

	if (!dev->num_crtcs)
		return -EINVAL;

	if (FUNC0(pipe >= dev->num_crtcs))
		return -EINVAL;

	FUNC4(&dev->vbl_lock, irqflags);
	/* Going from 0->1 means we have to enable interrupts again */
	if (FUNC1(1, &vblank->refcount) == 1) {
		ret = FUNC3(dev, pipe);
	} else {
		if (!vblank->enabled) {
			FUNC2(&vblank->refcount);
			ret = -EINVAL;
		}
	}
	FUNC5(&dev->vbl_lock, irqflags);

	return ret;
}