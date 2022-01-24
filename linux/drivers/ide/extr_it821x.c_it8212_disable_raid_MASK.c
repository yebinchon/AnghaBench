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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int PCI_COMMAND_PARITY ; 
 int PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	/* Reset local CPU, and set BIOS not ready */
	FUNC0(dev, 0x5E, 0x01);

	/* Set to bypass mode, and reset PCI bus */
	FUNC0(dev, 0x50, 0x00);
	FUNC2(dev, PCI_COMMAND,
			      PCI_COMMAND_PARITY | PCI_COMMAND_IO |
			      PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
	FUNC2(dev, 0x40, 0xA0F3);

	FUNC1(dev,0x4C, 0x02040204);
	FUNC0(dev, 0x42, 0x36);
	FUNC0(dev, PCI_LATENCY_TIMER, 0x20);
}