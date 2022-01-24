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
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_SEC_STATUS ; 
 int PCI_STATUS ; 
 int PCI_STATUS_DETECTED_PARITY ; 
 int PCI_STATUS_PARITY ; 
 int PCI_STATUS_SIG_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static u16 FUNC3(struct pci_dev *dev, int secondary)
{
	int where;
	u16 status;

	where = secondary ? PCI_SEC_STATUS : PCI_STATUS;
	FUNC1(dev, where, &status);

	/* If we get back 0xFFFF then we must suspect that the card has been
	 * pulled but the Linux PCI layer has not yet finished cleaning up.
	 * We don't want to report on such devices
	 */

	if (status == 0xFFFF) {
		u32 sanity;

		FUNC0(dev, 0, &sanity);

		if (sanity == 0xFFFFFFFF)
			return 0;
	}

	status &= PCI_STATUS_DETECTED_PARITY | PCI_STATUS_SIG_SYSTEM_ERROR |
		PCI_STATUS_PARITY;

	if (status)
		/* reset only the bits we are interested in */
		FUNC2(dev, where, status);

	return status;
}