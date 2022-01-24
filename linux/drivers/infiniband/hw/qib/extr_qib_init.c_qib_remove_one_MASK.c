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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_wq ; 
 struct qib_devdata* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  qib_mini_init ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*) ; 
 int FUNC8 (struct qib_devdata*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct qib_devdata *dd = FUNC1(pdev);
	int ret;

	/* unregister from IB core */
	FUNC7(dd);

	/*
	 * Disable the IB link, disable interrupts on the device,
	 * clear dma engines, etc.
	 */
	if (!qib_mini_init)
		FUNC5(dd);

	FUNC6(dd);

	/* wait until all of our (qsfp) queue_work() calls complete */
	FUNC0(ib_wq);

	ret = FUNC8(dd);
	if (ret)
		FUNC2(dd, "Failed counters filesystem cleanup: %d\n",
			    -ret);

	FUNC3(dd);

	FUNC4(dd);
}