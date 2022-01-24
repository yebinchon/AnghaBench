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
struct smu8_smumgr {scalar_t__ toc_entry_used_count; } ;
struct pp_hwmgr {struct smu8_smumgr* smu_backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC7(struct pp_hwmgr *hwmgr)
{
	struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;

	smu8_smu->toc_entry_used_count = 0;
	FUNC6(hwmgr);
	FUNC3(hwmgr);
	FUNC4(hwmgr);
	FUNC5(hwmgr);
	FUNC2(hwmgr);
	FUNC0(hwmgr);
	FUNC1(hwmgr);

	return 0;
}