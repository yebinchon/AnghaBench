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
struct TYPE_4__ {int* hpd; int /*<<< orphan*/  lock; } ;
struct radeon_device {TYPE_2__ irq; TYPE_1__* ddev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq_enabled; } ;

/* Variables and functions */
 int RADEON_MAX_HPD_PINS ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct radeon_device *rdev, unsigned hpd_mask)
{
	unsigned long irqflags;
	int i;

	if (!rdev->ddev->irq_enabled)
		return;

	FUNC1(&rdev->irq.lock, irqflags);
	for (i = 0; i < RADEON_MAX_HPD_PINS; ++i)
		rdev->irq.hpd[i] &= !(hpd_mask & (1 << i));
	FUNC0(rdev);
	FUNC2(&rdev->irq.lock, irqflags);
}