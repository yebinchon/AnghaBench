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
typedef  int /*<<< orphan*/ * sysmmu_pte_t ;
typedef  int /*<<< orphan*/  sysmmu_iova_t ;
struct sysmmu_fault_info {int /*<<< orphan*/  name; } ;
struct sysmmu_drvdata {int /*<<< orphan*/  sysmmu; int /*<<< orphan*/  pgtable; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sysmmu_drvdata *data,
				   const struct sysmmu_fault_info *finfo,
				   sysmmu_iova_t fault_addr)
{
	sysmmu_pte_t *ent;

	FUNC1(data->sysmmu, "%s: %s FAULT occurred at %#x\n",
		FUNC2(data->master), finfo->name, fault_addr);
	FUNC0(data->sysmmu, "Page table base: %pa\n", &data->pgtable);
	ent = FUNC6(FUNC5(data->pgtable), fault_addr);
	FUNC0(data->sysmmu, "\tLv1 entry: %#x\n", *ent);
	if (FUNC3(ent)) {
		ent = FUNC4(ent, fault_addr);
		FUNC0(data->sysmmu, "\t Lv2 entry: %#x\n", *ent);
	}
}