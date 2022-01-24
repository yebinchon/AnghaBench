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
struct mem_ctl_info {int /*<<< orphan*/  ctl_name; int /*<<< orphan*/  mod_name; int /*<<< orphan*/  mc_idx; int /*<<< orphan*/  work; scalar_t__ edac_check; int /*<<< orphan*/  op_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_MC ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OP_OFFLINE ; 
 struct mem_ctl_info* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/ * edac_mc_owner ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mem_ctls_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct mem_ctl_info *FUNC9(struct device *dev)
{
	struct mem_ctl_info *mci;

	FUNC2(0, "\n");

	FUNC7(&mem_ctls_mutex);

	/* find the requested mci struct in the global list */
	mci = FUNC0(dev);
	if (mci == NULL) {
		FUNC8(&mem_ctls_mutex);
		return NULL;
	}

	/* mark MCI offline: */
	mci->op_state = OP_OFFLINE;

	if (FUNC1(mci))
		edac_mc_owner = NULL;

	FUNC8(&mem_ctls_mutex);

	if (mci->edac_check)
		FUNC6(&mci->work);

	/* remove from sysfs */
	FUNC5(mci);

	FUNC4(KERN_INFO, EDAC_MC,
		"Removed device %d for %s %s: DEV %s\n", mci->mc_idx,
		mci->mod_name, mci->ctl_name, FUNC3(mci));

	return mci;
}