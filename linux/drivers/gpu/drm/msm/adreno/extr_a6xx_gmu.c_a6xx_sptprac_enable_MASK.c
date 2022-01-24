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
 int FUNC1 (struct a6xx_gmu*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct a6xx_gmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a6xx_gmu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct a6xx_gmu *gmu)
{
	int ret;
	u32 val;

	FUNC3(gmu, REG_A6XX_GMU_GX_SPTPRAC_POWER_CONTROL, 0x778000);

	ret = FUNC1(gmu, REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS, val,
		(val & 0x38) == 0x28, 1, 100);

	if (ret) {
		FUNC0(gmu->dev, "Unable to power on SPTPRAC: 0x%x\n",
			FUNC2(gmu, REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS));
	}

	return 0;
}