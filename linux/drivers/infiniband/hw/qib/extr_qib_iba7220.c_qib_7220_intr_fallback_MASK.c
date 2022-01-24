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
struct qib_devdata {int /*<<< orphan*/  pcidev; scalar_t__ msi_lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_IRQ_LEGACY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*) ; 

__attribute__((used)) static int FUNC5(struct qib_devdata *dd)
{
	if (!dd->msi_lo)
		return 0;

	FUNC2(dd->pcidev,
		    "MSI interrupt not detected, trying INTx interrupts\n");

	FUNC3(dd);
	dd->msi_lo = 0;
	if (FUNC0(dd->pcidev, 1, 1, PCI_IRQ_LEGACY) < 0)
		FUNC1(dd, "Failed to enable INTx\n");
	FUNC4(dd);
	return 1;
}