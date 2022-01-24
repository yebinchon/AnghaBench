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
struct mmp_pdma_phy {int dummy; } ;
struct mmp_pdma_device {int dma_channels; struct mmp_pdma_phy* phy; scalar_t__ base; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 scalar_t__ DINT ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,struct mmp_pdma_phy*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct mmp_pdma_device *pdev = dev_id;
	struct mmp_pdma_phy *phy;
	u32 dint = FUNC2(pdev->base + DINT);
	int i, ret;
	int irq_num = 0;

	while (dint) {
		i = FUNC0(dint);
		/* only handle interrupts belonging to pdma driver*/
		if (i >= pdev->dma_channels)
			break;
		dint &= (dint - 1);
		phy = &pdev->phy[i];
		ret = FUNC1(irq, phy);
		if (ret == IRQ_HANDLED)
			irq_num++;
	}

	if (irq_num)
		return IRQ_HANDLED;

	return IRQ_NONE;
}