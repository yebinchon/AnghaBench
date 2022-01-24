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
struct qib_devdata {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 struct qib_devdata* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int) ; 

__attribute__((used)) static void
FUNC3(struct pci_dev *pdev)
{
	struct qib_devdata *dd = FUNC0(pdev);

	FUNC1(pdev, "QIB resume function called\n");
	/*
	 * Running jobs will fail, since it's asynchronous
	 * unlike sysfs-requested reset.   Better than
	 * doing nothing.
	 */
	FUNC2(dd, 1); /* same as re-init after reset */
}