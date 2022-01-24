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
struct qib_devdata {int /*<<< orphan*/  pcidev; TYPE_1__* cspec; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_msix_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_IRQ_LEGACY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qib_devdata *dd)
{
	if (!dd->cspec->num_msix_entries)
		return 0; /* already using INTx */

	FUNC3(dd->pcidev,
		"MSIx interrupt not detected, trying INTx interrupts\n");
	FUNC1(dd);
	if (FUNC0(dd->pcidev, 1, 1, PCI_IRQ_LEGACY) < 0)
		FUNC2(dd, "Failed to enable INTx\n");
	FUNC4(dd, 0);
	return 1;
}