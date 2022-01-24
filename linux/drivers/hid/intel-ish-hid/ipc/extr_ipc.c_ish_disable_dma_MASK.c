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
struct ishtp_device {int /*<<< orphan*/  devc; } ;

/* Variables and functions */
 int EBUSY ; 
 int IPC_ISH_IN_DMA ; 
 int /*<<< orphan*/  IPC_REG_ISH_RMP2 ; 
 unsigned int MAX_DMA_DELAY ; 
 int FUNC0 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct ishtp_device *dev)
{
	unsigned int	dma_delay;

	/* Clear the dma enable bit */
	FUNC2(dev, IPC_REG_ISH_RMP2, 0);

	/* wait for dma inactive */
	for (dma_delay = 0; dma_delay < MAX_DMA_DELAY &&
		FUNC0(dev) & (IPC_ISH_IN_DMA);
		dma_delay += 5)
		FUNC3(5);

	if (dma_delay >= MAX_DMA_DELAY) {
		FUNC1(dev->devc,
			"Wait for DMA inactive timeout\n");
		return	-EBUSY;
	}

	return 0;
}