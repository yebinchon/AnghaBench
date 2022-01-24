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
typedef  int u64 ;
typedef  int u32 ;
struct panfrost_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPU_FAULT_ADDRESS_HI ; 
 int /*<<< orphan*/  GPU_FAULT_ADDRESS_LO ; 
 int /*<<< orphan*/  GPU_FAULT_STATUS ; 
 int /*<<< orphan*/  GPU_INT_CLEAR ; 
 int /*<<< orphan*/  GPU_INT_MASK ; 
 int /*<<< orphan*/  GPU_INT_STAT ; 
 int GPU_IRQ_CLEAN_CACHES_COMPLETED ; 
 int GPU_IRQ_MASK_ERROR ; 
 int GPU_IRQ_MULTIPLE_FAULT ; 
 int GPU_IRQ_PERFCNT_SAMPLE_COMPLETED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct panfrost_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct panfrost_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct panfrost_device *pfdev = data;
	u32 state = FUNC1(pfdev, GPU_INT_STAT);
	u32 fault_status = FUNC1(pfdev, GPU_FAULT_STATUS);

	if (!state)
		return IRQ_NONE;

	if (state & GPU_IRQ_MASK_ERROR) {
		u64 address = (u64) FUNC1(pfdev, GPU_FAULT_ADDRESS_HI) << 32;
		address |= FUNC1(pfdev, GPU_FAULT_ADDRESS_LO);

		FUNC0(pfdev->dev, "GPU Fault 0x%08x (%s) at 0x%016llx\n",
			 fault_status & 0xFF, FUNC3(pfdev, fault_status),
			 address);

		if (state & GPU_IRQ_MULTIPLE_FAULT)
			FUNC0(pfdev->dev, "There were multiple GPU faults - some have not been reported\n");

		FUNC2(pfdev, GPU_INT_MASK, 0);
	}

	if (state & GPU_IRQ_PERFCNT_SAMPLE_COMPLETED)
		FUNC5(pfdev);

	if (state & GPU_IRQ_CLEAN_CACHES_COMPLETED)
		FUNC4(pfdev);

	FUNC2(pfdev, GPU_INT_CLEAR, state);

	return IRQ_HANDLED;
}