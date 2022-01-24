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
struct sysmmu_drvdata {scalar_t__ sfrbase; int /*<<< orphan*/  version; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 scalar_t__ REG_PT_BASE_ADDR ; 
 scalar_t__ REG_V5_PT_BASE_PFN ; 
 int /*<<< orphan*/  FUNC1 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sysmmu_drvdata *data, phys_addr_t pgd)
{
	if (FUNC0(data->version) < 5)
		FUNC2(pgd, data->sfrbase + REG_PT_BASE_ADDR);
	else
		FUNC2(pgd >> PAGE_SHIFT,
			     data->sfrbase + REG_V5_PT_BASE_PFN);

	FUNC1(data);
}