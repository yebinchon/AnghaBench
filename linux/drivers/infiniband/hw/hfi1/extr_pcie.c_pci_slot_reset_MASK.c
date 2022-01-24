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
struct hfi1_devdata {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 struct hfi1_devdata* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC2(struct pci_dev *pdev)
{
	struct hfi1_devdata *dd = FUNC1(pdev);

	FUNC0(dd, "HFI1 slot_reset function called, ignored\n");
	return PCI_ERS_RESULT_CAN_RECOVER;
}