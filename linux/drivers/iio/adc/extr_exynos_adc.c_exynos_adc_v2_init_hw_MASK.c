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
typedef  int u32 ;
struct exynos_adc {int /*<<< orphan*/  regs; TYPE_1__* data; int /*<<< orphan*/  pmu_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_offset; scalar_t__ needs_adc_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ADC_V2_CON1_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ADC_V2_CON2_ESEL ; 
 int ADC_V2_CON2_HIGHF ; 
 int ADC_V2_CON2_OSEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct exynos_adc *info)
{
	u32 con1, con2;

	if (info->data->needs_adc_phy)
		FUNC4(info->pmu_map, info->data->phy_offset, 1);

	con1 = ADC_V2_CON1_SOFT_RESET;
	FUNC5(con1, FUNC0(info->regs));

	con2 = ADC_V2_CON2_OSEL | ADC_V2_CON2_ESEL |
		ADC_V2_CON2_HIGHF | FUNC2(0);
	FUNC5(con2, FUNC1(info->regs));

	/* Enable interrupts */
	FUNC5(1, FUNC3(info->regs));
}