#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pp_hwmgr {TYPE_2__* pptable_func; TYPE_1__* hwmgr_func; int /*<<< orphan*/  pm_en; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* pptable_fini ) (struct pp_hwmgr*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* backend_fini ) (struct pp_hwmgr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*) ; 

int FUNC8(struct pp_hwmgr *hwmgr)
{
	if (!hwmgr || !hwmgr->pm_en)
		return 0;

	FUNC2(hwmgr);
	FUNC5(hwmgr);
	FUNC3(hwmgr, true, NULL);
	FUNC1(hwmgr);
	FUNC0(hwmgr);

	if (hwmgr->hwmgr_func->backend_fini)
		hwmgr->hwmgr_func->backend_fini(hwmgr);
	if (hwmgr->pptable_func->pptable_fini)
		hwmgr->pptable_func->pptable_fini(hwmgr);
	return FUNC4(hwmgr);
}