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
struct analogix_dp_device {scalar_t__ reg_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_1 ; 
 scalar_t__ ANALOGIX_DP_DEBUG_CTL ; 
 scalar_t__ ANALOGIX_DP_FUNC_EN_2 ; 
 int AUX_FUNC_EN_N ; 
 int DP_TIMEOUT_LOOP_COUNT ; 
 int ETIMEDOUT ; 
 int F_PLL_LOCK ; 
 int LS_CLK_DOMAIN_FUNC_EN_N ; 
 int PLL_LOCK_CHG ; 
 int PLL_LOCK_CTRL ; 
 scalar_t__ PLL_UNLOCKED ; 
 int /*<<< orphan*/  POWER_ALL ; 
 int SERDES_FIFO_FUNC_EN_N ; 
 scalar_t__ FUNC0 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct analogix_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

int FUNC7(struct analogix_dp_device *dp)
{
	u32 reg;
	int timeout_loop = 0;

	FUNC1(dp, POWER_ALL, 0);

	reg = PLL_LOCK_CHG;
	FUNC6(reg, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_1);

	reg = FUNC4(dp->reg_base + ANALOGIX_DP_DEBUG_CTL);
	reg &= ~(F_PLL_LOCK | PLL_LOCK_CTRL);
	FUNC6(reg, dp->reg_base + ANALOGIX_DP_DEBUG_CTL);

	/* Power up PLL */
	if (FUNC0(dp) == PLL_UNLOCKED) {
		FUNC2(dp, 0);

		while (FUNC0(dp) == PLL_UNLOCKED) {
			timeout_loop++;
			if (DP_TIMEOUT_LOOP_COUNT < timeout_loop) {
				FUNC3(dp->dev, "failed to get pll lock status\n");
				return -ETIMEDOUT;
			}
			FUNC5(10, 20);
		}
	}

	/* Enable Serdes FIFO function and Link symbol clock domain module */
	reg = FUNC4(dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
	reg &= ~(SERDES_FIFO_FUNC_EN_N | LS_CLK_DOMAIN_FUNC_EN_N
		| AUX_FUNC_EN_N);
	FUNC6(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
	return 0;
}