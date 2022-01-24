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
struct msm_gpu {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_RBCCU_POWER_CNTL ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_SP_POWER_CNTL ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_SP_PWR_CLK_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct msm_gpu*) ; 
 int FUNC4 (struct msm_gpu*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct msm_gpu *gpu)
{
	int ret;

	/* Turn on the core power */
	ret = FUNC3(gpu);
	if (ret)
		return ret;

	/* Turn the RBCCU domain first to limit the chances of voltage droop */
	FUNC2(gpu, REG_A5XX_GPMU_RBCCU_POWER_CNTL, 0x778000);

	/* Wait 3 usecs before polling */
	FUNC5(3);

	ret = FUNC4(gpu, 20, REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS,
		(1 << 20), (1 << 20));
	if (ret) {
		FUNC0("%s: timeout waiting for RBCCU GDSC enable: %X\n",
			gpu->name,
			FUNC1(gpu, REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS));
		return ret;
	}

	/* Turn on the SP domain */
	FUNC2(gpu, REG_A5XX_GPMU_SP_POWER_CNTL, 0x778000);
	ret = FUNC4(gpu, 20, REG_A5XX_GPMU_SP_PWR_CLK_STATUS,
		(1 << 20), (1 << 20));
	if (ret)
		FUNC0("%s: timeout waiting for SP GDSC enable\n",
			gpu->name);

	return ret;
}