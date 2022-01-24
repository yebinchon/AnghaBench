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
struct sbridge_pvt {int dummy; } ;
struct sbridge_dev {struct mem_ctl_info* mci; TYPE_1__** pdev; } ;
struct mem_ctl_info {int /*<<< orphan*/ * ctl_name; int /*<<< orphan*/  pdev; struct sbridge_pvt* pvt_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct mem_ctl_info*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sbridge_dev *sbridge_dev)
{
	struct mem_ctl_info *mci = sbridge_dev->mci;
	struct sbridge_pvt *pvt;

	if (FUNC5(!mci || !mci->pvt_info)) {
		FUNC0(0, "MC: dev = %p\n", &sbridge_dev->pdev[0]->dev);

		FUNC4(KERN_ERR, "Couldn't find mci handler\n");
		return;
	}

	pvt = mci->pvt_info;

	FUNC0(0, "MC: mci = %p, dev = %p\n",
		 mci, &sbridge_dev->pdev[0]->dev);

	/* Remove MC sysfs nodes */
	FUNC1(mci->pdev);

	FUNC0(1, "%s: free mci struct\n", mci->ctl_name);
	FUNC3(mci->ctl_name);
	FUNC2(mci);
	sbridge_dev->mci = NULL;
}