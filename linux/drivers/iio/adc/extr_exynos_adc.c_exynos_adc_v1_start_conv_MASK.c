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
typedef  unsigned long u32 ;
struct exynos_adc {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 unsigned long ADC_CON_EN_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct exynos_adc *info,
				     unsigned long addr)
{
	u32 con1;

	FUNC3(addr, FUNC1(info->regs));

	con1 = FUNC2(FUNC0(info->regs));
	FUNC3(con1 | ADC_CON_EN_START, FUNC0(info->regs));
}