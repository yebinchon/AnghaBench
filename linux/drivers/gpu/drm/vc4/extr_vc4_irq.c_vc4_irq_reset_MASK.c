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
struct vc4_dev {int /*<<< orphan*/  job_lock; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V3D_DRIVER_IRQS ; 
 int /*<<< orphan*/  V3D_INTCTL ; 
 int /*<<< orphan*/  V3D_INTENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_dev* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 

void FUNC6(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC3(dev);
	unsigned long irqflags;

	/* Acknowledge any stale IRQs. */
	FUNC0(V3D_INTCTL, V3D_DRIVER_IRQS);

	/*
	 * Turn all our interrupts on.  Binner out of memory is the
	 * only one we expect to trigger at this point, since we've
	 * just come from poweron and haven't supplied any overflow
	 * memory yet.
	 */
	FUNC0(V3D_INTENA, V3D_DRIVER_IRQS);

	FUNC1(&vc4->job_lock, irqflags);
	FUNC4(dev);
	FUNC5(dev);
	FUNC2(&vc4->job_lock, irqflags);
}