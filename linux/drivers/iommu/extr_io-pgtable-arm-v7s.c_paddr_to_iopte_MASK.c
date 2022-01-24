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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct io_pgtable_cfg*) ; 

__attribute__((used)) static arm_v7s_iopte FUNC3(phys_addr_t paddr, int lvl,
				    struct io_pgtable_cfg *cfg)
{
	arm_v7s_iopte pte = paddr & FUNC0(lvl);

	if (!FUNC2(cfg))
		return pte;

	if (paddr & FUNC1(32))
		pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
	if (paddr & FUNC1(33))
		pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
	return pte;
}