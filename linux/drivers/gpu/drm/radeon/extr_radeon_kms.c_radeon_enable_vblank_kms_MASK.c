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
struct TYPE_2__ {int* crtc_vblank_int; int /*<<< orphan*/  lock; } ;
struct radeon_device {int num_crtc; TYPE_1__ irq; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct drm_device *dev, int crtc)
{
	struct radeon_device *rdev = dev->dev_private;
	unsigned long irqflags;
	int r;

	if (crtc < 0 || crtc >= rdev->num_crtc) {
		FUNC0("Invalid crtc %d\n", crtc);
		return -EINVAL;
	}

	FUNC2(&rdev->irq.lock, irqflags);
	rdev->irq.crtc_vblank_int[crtc] = true;
	r = FUNC1(rdev);
	FUNC3(&rdev->irq.lock, irqflags);
	return r;
}