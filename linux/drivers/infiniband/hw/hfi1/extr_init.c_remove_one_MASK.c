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
struct hfi1_devdata {int /*<<< orphan*/  verbs_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  ib_wq ; 
 struct hfi1_devdata* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_devdata*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct hfi1_devdata *dd = FUNC5(pdev);

	/* close debugfs files before ib unregister */
	FUNC1(&dd->verbs_dev);

	/* remove the /dev hfi1 interface */
	FUNC2(dd);

	/* wait for existing user space clients to finish */
	FUNC9(dd);

	/* unregister from IB core */
	FUNC3(dd);

	/* cleanup vnic */
	FUNC4(dd);

	/*
	 * Disable the IB link, disable interrupts on the device,
	 * clear dma engines, etc.
	 */
	FUNC7(dd);

	FUNC8(dd);

	/* wait until all of our (qsfp) queue_work() calls complete */
	FUNC0(ib_wq);

	FUNC6(dd);
}