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
struct mem_ctl_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 

void FUNC4(struct mem_ctl_info *mci)
{
	FUNC2(1, "\n");

	/* If we're not yet registered with sysfs free only what was allocated
	 * in edac_mc_alloc().
	 */
	if (!FUNC1(&mci->dev)) {
		FUNC0(mci);
		return;
	}

	/* the mci instance is freed here, when the sysfs object is dropped */
	FUNC3(mci);
}