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
typedef  int u32 ;
struct img_hash_dev {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  done_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CR_INTCLEAR ; 
 int /*<<< orphan*/  CR_INTSTAT ; 
 int CR_INT_MESSAGE_WRITE_ERROR ; 
 int CR_INT_NEW_RESULTS_SET ; 
 int CR_INT_RESULTS_AVAILABLE ; 
 int CR_INT_RESULT_READ_ERR ; 
 int DRIVER_FLAGS_BUSY ; 
 int DRIVER_FLAGS_CPU ; 
 int DRIVER_FLAGS_DMA_READY ; 
 int DRIVER_FLAGS_OUTPUT_READY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct img_hash_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct img_hash_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct img_hash_dev *hdev = dev_id;
	u32 reg;

	reg = FUNC2(hdev, CR_INTSTAT);
	FUNC3(hdev, CR_INTCLEAR, reg);

	if (reg & CR_INT_NEW_RESULTS_SET) {
		FUNC0(hdev->dev, "IRQ CR_INT_NEW_RESULTS_SET\n");
		if (DRIVER_FLAGS_BUSY & hdev->flags) {
			hdev->flags |= DRIVER_FLAGS_OUTPUT_READY;
			if (!(DRIVER_FLAGS_CPU & hdev->flags))
				hdev->flags |= DRIVER_FLAGS_DMA_READY;
			FUNC4(&hdev->done_task);
		} else {
			FUNC1(hdev->dev,
				 "HASH interrupt when no active requests.\n");
		}
	} else if (reg & CR_INT_RESULTS_AVAILABLE) {
		FUNC1(hdev->dev,
			 "IRQ triggered before the hash had completed\n");
	} else if (reg & CR_INT_RESULT_READ_ERR) {
		FUNC1(hdev->dev,
			 "Attempt to read from an empty result queue\n");
	} else if (reg & CR_INT_MESSAGE_WRITE_ERROR) {
		FUNC1(hdev->dev,
			 "Data written before the hardware was configured\n");
	}
	return IRQ_HANDLED;
}