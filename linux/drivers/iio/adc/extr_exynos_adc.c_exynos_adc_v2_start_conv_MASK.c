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
typedef  int u32 ;
struct exynos_adc {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ADC_CON_EN_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ADC_V2_CON2_ACH_MASK ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct exynos_adc *info,
				     unsigned long addr)
{
	u32 con1, con2;

	con2 = FUNC3(FUNC1(info->regs));
	con2 &= ~ADC_V2_CON2_ACH_MASK;
	con2 |= FUNC2(addr);
	FUNC4(con2, FUNC1(info->regs));

	con1 = FUNC3(FUNC0(info->regs));
	FUNC4(con1 | ADC_CON_EN_START, FUNC0(info->regs));
}