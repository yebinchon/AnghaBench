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
struct msgdma_device {int idle; scalar_t__ csr; int /*<<< orphan*/  irq_tasklet; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MSGDMA_CSR_STATUS ; 
 int MSGDMA_CSR_STAT_BUSY ; 
 int /*<<< orphan*/  MSGDMA_CSR_STAT_IRQ ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct msgdma_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct msgdma_device *mdev = data;
	u32 status;

	status = FUNC0(mdev->csr + MSGDMA_CSR_STATUS);
	if ((status & MSGDMA_CSR_STAT_BUSY) == 0) {
		/* Start next transfer if the DMA controller is idle */
		FUNC3(&mdev->lock);
		mdev->idle = true;
		FUNC2(mdev);
		FUNC4(&mdev->lock);
	}

	FUNC5(&mdev->irq_tasklet);

	/* Clear interrupt in mSGDMA controller */
	FUNC1(MSGDMA_CSR_STAT_IRQ, mdev->csr + MSGDMA_CSR_STATUS);

	return IRQ_HANDLED;
}