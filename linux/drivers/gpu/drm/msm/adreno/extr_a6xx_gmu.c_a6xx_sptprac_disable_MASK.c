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
struct a6xx_gmu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GX_SPTPRAC_POWER_CONTROL ; 
 int /*<<< orphan*/  REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS ; 
 int /*<<< orphan*/  REG_A6XX_GPU_CC_GX_GDSCR ; 
 int FUNC1 (struct a6xx_gmu*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct a6xx_gmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a6xx_gmu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct a6xx_gmu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct a6xx_gmu *gmu)
{
	u32 val;
	int ret;

	/* Make sure retention is on */
	FUNC3(gmu, REG_A6XX_GPU_CC_GX_GDSCR, 0, (1 << 11));

	FUNC4(gmu, REG_A6XX_GMU_GX_SPTPRAC_POWER_CONTROL, 0x778001);

	ret = FUNC1(gmu, REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS, val,
		(val & 0x04), 100, 10000);

	if (ret)
		FUNC0(gmu->dev, "failed to power off SPTPRAC: 0x%x\n",
			FUNC2(gmu, REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS));
}