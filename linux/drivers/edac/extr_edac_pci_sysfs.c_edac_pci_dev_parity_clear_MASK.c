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
typedef  int u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_HEADER_TYPE ; 
 int PCI_HEADER_TYPE_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	u8 header_type;

	FUNC0(dev, 0);

	/* read the device TYPE, looking for bridges */
	FUNC1(dev, PCI_HEADER_TYPE, &header_type);

	if ((header_type & 0x7F) == PCI_HEADER_TYPE_BRIDGE)
		FUNC0(dev, 1);
}