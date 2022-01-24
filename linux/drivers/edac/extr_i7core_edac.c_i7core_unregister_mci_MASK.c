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
struct mem_ctl_info {int /*<<< orphan*/ * ctl_name; int /*<<< orphan*/  pdev; struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {scalar_t__ enable_scrub; } ;
struct i7core_dev {struct mem_ctl_info* mci; TYPE_1__** pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct mem_ctl_info*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct i7core_pvt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct i7core_dev *i7core_dev)
{
	struct mem_ctl_info *mci = i7core_dev->mci;
	struct i7core_pvt *pvt;

	if (FUNC8(!mci || !mci->pvt_info)) {
		FUNC1(0, "MC: dev = %p\n", &i7core_dev->pdev[0]->dev);

		FUNC6(KERN_ERR, "Couldn't find mci handler\n");
		return;
	}

	pvt = mci->pvt_info;

	FUNC1(0, "MC: mci = %p, dev = %p\n", mci, &i7core_dev->pdev[0]->dev);

	/* Disable scrubrate setting */
	if (pvt->enable_scrub)
		FUNC0(mci);

	/* Disable EDAC polling */
	FUNC5(pvt);

	/* Remove MC sysfs nodes */
	FUNC4(mci);
	FUNC2(mci->pdev);

	FUNC1(1, "%s: free mci struct\n", mci->ctl_name);
	FUNC7(mci->ctl_name);
	FUNC3(mci);
	i7core_dev->mci = NULL;
}