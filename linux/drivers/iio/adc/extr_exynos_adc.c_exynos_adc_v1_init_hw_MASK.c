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
struct exynos_adc {int delay; int /*<<< orphan*/  regs; TYPE_1__* data; int /*<<< orphan*/  pmu_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_offset; scalar_t__ needs_adc_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ADC_V1_CON_PRSCEN ; 
 int FUNC1 (int) ; 
 int ADC_V1_CON_RES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct exynos_adc *info)
{
	u32 con1;

	if (info->data->needs_adc_phy)
		FUNC3(info->pmu_map, info->data->phy_offset, 1);

	/* set default prescaler values and Enable prescaler */
	con1 =  FUNC1(49) | ADC_V1_CON_PRSCEN;

	/* Enable 12-bit ADC resolution */
	con1 |= ADC_V1_CON_RES;
	FUNC4(con1, FUNC0(info->regs));

	/* set touchscreen delay */
	FUNC4(info->delay, FUNC2(info->regs));
}