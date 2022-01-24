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
struct TYPE_2__ {int /*<<< orphan*/  mmu_features; } ;
struct panfrost_device {int /*<<< orphan*/  dev; TYPE_1__ features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct panfrost_device*) ; 
 int /*<<< orphan*/  panfrost_gpu_irq_handler ; 
 int /*<<< orphan*/  FUNC7 (struct panfrost_device*) ; 
 int FUNC8 (struct panfrost_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct panfrost_device *pfdev)
{
	int err, irq;

	err = FUNC8(pfdev);
	if (err)
		return err;

	FUNC5(pfdev);

	FUNC4(pfdev->dev,
		FUNC0(FUNC1(0xff00, pfdev->features.mmu_features)));

	irq = FUNC9(FUNC10(pfdev->dev), "gpu");
	if (irq <= 0)
		return -ENODEV;

	err = FUNC3(pfdev->dev, irq, panfrost_gpu_irq_handler,
			       IRQF_SHARED, "gpu", pfdev);
	if (err) {
		FUNC2(pfdev->dev, "failed to request gpu irq");
		return err;
	}

	FUNC6(pfdev);
	FUNC7(pfdev);

	return 0;
}