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
struct radeon_device {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; struct radeon_device* dev_private; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 

irqreturn_t FUNC2(int irq, void *arg)
{
	struct drm_device *dev = (struct drm_device *) arg;
	struct radeon_device *rdev = dev->dev_private;
	irqreturn_t ret;

	ret = FUNC1(rdev);
	if (ret == IRQ_HANDLED)
		FUNC0(dev->dev);
	return ret;
}