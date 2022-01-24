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
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {int /*<<< orphan*/  addrmatch_dev; int /*<<< orphan*/  chancounts_dev; int /*<<< orphan*/  is_registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mem_ctl_info *mci)
{
	struct i7core_pvt *pvt = mci->pvt_info;

	FUNC1(1, "\n");

	if (!pvt->is_registered) {
		FUNC0(pvt->chancounts_dev);
		FUNC2(pvt->chancounts_dev);
	}
	FUNC0(pvt->addrmatch_dev);
	FUNC2(pvt->addrmatch_dev);
}