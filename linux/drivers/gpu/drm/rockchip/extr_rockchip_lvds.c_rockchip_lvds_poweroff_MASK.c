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
struct rockchip_lvds {int /*<<< orphan*/  pclk; int /*<<< orphan*/  dev; TYPE_1__* soc_data; int /*<<< orphan*/  grf; } ;
struct TYPE_2__ {int /*<<< orphan*/  grf_soc_con7; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int LVDS_CH0_EN ; 
 int LVDS_CH1_EN ; 
 int LVDS_DUAL ; 
 int LVDS_PWRDN ; 
 int LVDS_TTL_EN ; 
 int /*<<< orphan*/  RK3288_LVDS_CFG_REG21 ; 
 int /*<<< orphan*/  RK3288_LVDS_CFG_REG21_TX_ENABLE ; 
 int /*<<< orphan*/  RK3288_LVDS_CFG_REGC ; 
 int /*<<< orphan*/  RK3288_LVDS_CFG_REGC_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rockchip_lvds*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct rockchip_lvds *lvds)
{
	int ret;
	u32 val;

	FUNC2(lvds, RK3288_LVDS_CFG_REG21, RK3288_LVDS_CFG_REG21_TX_ENABLE);
	FUNC2(lvds, RK3288_LVDS_CFG_REGC, RK3288_LVDS_CFG_REGC_PLL_ENABLE);
	val = LVDS_DUAL | LVDS_TTL_EN | LVDS_CH0_EN | LVDS_CH1_EN | LVDS_PWRDN;
	val |= val << 16;
	ret = FUNC4(lvds->grf, lvds->soc_data->grf_soc_con7, val);
	if (ret != 0)
		FUNC0(lvds->dev, "Could not write to GRF: %d\n", ret);

	FUNC3(lvds->dev);
	FUNC1(lvds->pclk);
}