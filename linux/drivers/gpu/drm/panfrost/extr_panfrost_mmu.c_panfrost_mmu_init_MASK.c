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
struct panfrost_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct panfrost_device*) ; 
 int /*<<< orphan*/  panfrost_mmu_irq_handler ; 
 int /*<<< orphan*/  panfrost_mmu_irq_handler_thread ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct panfrost_device *pfdev)
{
	int err, irq;

	irq = FUNC2(FUNC3(pfdev->dev), "mmu");
	if (irq <= 0)
		return -ENODEV;

	err = FUNC1(pfdev->dev, irq, panfrost_mmu_irq_handler,
					panfrost_mmu_irq_handler_thread,
					IRQF_SHARED, "mmu", pfdev);

	if (err) {
		FUNC0(pfdev->dev, "failed to request mmu irq");
		return err;
	}

	return 0;
}