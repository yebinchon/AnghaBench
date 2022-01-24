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
struct io_pgtable_cfg {int dummy; } ;
typedef  int phys_addr_t ;
typedef  int arm_v7s_iopte ;

/* Variables and functions */
 int ARM_V7S_ATTR_MTK_PA_BIT32 ; 
 int ARM_V7S_ATTR_MTK_PA_BIT33 ; 
 int ARM_V7S_CONT_PAGES ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int ARM_V7S_TABLE_MASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_pgtable_cfg*) ; 
 scalar_t__ FUNC4 (int,int) ; 

__attribute__((used)) static phys_addr_t FUNC5(arm_v7s_iopte pte, int lvl,
				  struct io_pgtable_cfg *cfg)
{
	arm_v7s_iopte mask;
	phys_addr_t paddr;

	if (FUNC1(pte, lvl))
		mask = ARM_V7S_TABLE_MASK;
	else if (FUNC4(pte, lvl))
		mask = FUNC0(lvl) * ARM_V7S_CONT_PAGES;
	else
		mask = FUNC0(lvl);

	paddr = pte & mask;
	if (!FUNC3(cfg))
		return paddr;

	if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
		paddr |= FUNC2(32);
	if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
		paddr |= FUNC2(33);
	return paddr;
}