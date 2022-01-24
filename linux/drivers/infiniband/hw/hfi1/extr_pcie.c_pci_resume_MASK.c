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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int) ; 
 struct hfi1_devdata* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void
FUNC3(struct pci_dev *pdev)
{
	struct hfi1_devdata *dd = FUNC2(pdev);

	FUNC0(dd, "HFI1 resume function called\n");
	/*
	 * Running jobs will fail, since it's asynchronous
	 * unlike sysfs-requested reset.   Better than
	 * doing nothing.
	 */
	FUNC1(dd, 1); /* same as re-init after reset */
}