#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int ARTTIM23 ; 
 int ARTTIM23_INTR_CH1 ; 
 int CFR ; 
 int CFR_INTR_CH0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(ide_hwif_t *hwif)
{
	struct pci_dev *dev	= FUNC2(hwif->dev);
	int irq_reg		= hwif->channel ? ARTTIM23 : CFR;
	u8  irq_mask		= hwif->channel ? ARTTIM23_INTR_CH1 :
						  CFR_INTR_CH0;
	u8  irq_stat		= 0;

	(void) FUNC0(dev, irq_reg, &irq_stat);

	FUNC1("%s: irq_stat: 0x%02x irq_mask: 0x%02x\n",
		 hwif->name, irq_stat, irq_mask);

	return (irq_stat & irq_mask) ? 1 : 0;
}