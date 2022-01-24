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
struct mem_ctl_info {int /*<<< orphan*/  pdev; } ;
struct ghes {int dummy; } ;
struct TYPE_2__ {struct mem_ctl_info* mci; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  ghes_init ; 
 TYPE_1__* ghes_pvt ; 

void FUNC3(struct ghes *ghes)
{
	struct mem_ctl_info *mci;

	if (!ghes_pvt)
		return;

	if (FUNC0(&ghes_init))
		return;

	mci = ghes_pvt->mci;
	ghes_pvt = NULL;
	FUNC1(mci->pdev);
	FUNC2(mci);
}