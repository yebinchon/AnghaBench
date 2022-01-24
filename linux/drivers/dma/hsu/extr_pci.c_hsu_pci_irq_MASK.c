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
typedef  int u32 ;
struct pci_dev {scalar_t__ device; } ;
struct hsu_dma_chip {TYPE_1__* hsu; scalar_t__ regs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned short nr_channels; } ;

/* Variables and functions */
 scalar_t__ HSU_PCI_DMAISR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_MRFLD_HSU_DMA ; 
 int FUNC1 (struct hsu_dma_chip*,unsigned short,int) ; 
 int FUNC2 (struct hsu_dma_chip*,unsigned short,int*) ; 
 int FUNC3 (scalar_t__) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev)
{
	struct hsu_dma_chip *chip = dev;
	struct pci_dev *pdev = FUNC4(chip->dev);
	u32 dmaisr;
	u32 status;
	unsigned short i;
	int ret = 0;
	int err;

	/*
	 * On Intel Tangier B0 and Anniedale the interrupt line, disregarding
	 * to have different numbers, is shared between HSU DMA and UART IPs.
	 * Thus on such SoCs we are expecting that IRQ handler is called in
	 * UART driver only.
	 */
	if (pdev->device == PCI_DEVICE_ID_INTEL_MRFLD_HSU_DMA)
		return IRQ_HANDLED;

	dmaisr = FUNC3(chip->regs + HSU_PCI_DMAISR);
	for (i = 0; i < chip->hsu->nr_channels; i++) {
		if (dmaisr & 0x1) {
			err = FUNC2(chip, i, &status);
			if (err > 0)
				ret |= 1;
			else if (err == 0)
				ret |= FUNC1(chip, i, status);
		}
		dmaisr >>= 1;
	}

	return FUNC0(ret);
}