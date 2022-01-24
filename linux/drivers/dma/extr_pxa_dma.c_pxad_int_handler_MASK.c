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
struct pxad_phy {int dummy; } ;
struct pxad_device {struct pxad_phy* phys; scalar_t__ base; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 scalar_t__ DINT ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,struct pxad_phy*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct pxad_device *pdev = dev_id;
	struct pxad_phy *phy;
	u32 dint = FUNC2(pdev->base + DINT);
	int i, ret = IRQ_NONE;

	while (dint) {
		i = FUNC0(dint);
		dint &= (dint - 1);
		phy = &pdev->phys[i];
		if (FUNC1(irq, phy) == IRQ_HANDLED)
			ret = IRQ_HANDLED;
	}

	return ret;
}