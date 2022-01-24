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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {struct i82975x_pvt* pvt_info; } ;
struct i82975x_pvt {scalar_t__ mch_window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct mem_ctl_info *mci;
	struct i82975x_pvt *pvt;

	FUNC0(0, "\n");

	mci = FUNC1(&pdev->dev);
	if (mci  == NULL)
		return;

	pvt = mci->pvt_info;
	if (pvt->mch_window)
		FUNC3( pvt->mch_window );

	FUNC2(mci);
}