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
struct analogix_dp_device {scalar_t__ reg_base; TYPE_1__* plat_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_type; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_AUX_CH_DEFER_CTL ; 
 scalar_t__ ANALOGIX_DP_AUX_HW_RETRY_CTL ; 
 scalar_t__ ANALOGIX_DP_FUNC_EN_2 ; 
 scalar_t__ ANALOGIX_DP_INT_STA ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AUX_BLOCK ; 
 int AUX_ERR ; 
 int AUX_FUNC_EN_N ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int AUX_HW_RETRY_INTERVAL_600_MICROSECONDS ; 
 int FUNC2 (int) ; 
 int DEFER_CTRL_EN ; 
 int RPLY_RECEIV ; 
 int /*<<< orphan*/  FUNC3 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct analogix_dp_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

void FUNC9(struct analogix_dp_device *dp)
{
	u32 reg;

	/* Clear inerrupts related to AUX channel */
	reg = RPLY_RECEIV | AUX_ERR;
	FUNC8(reg, dp->reg_base + ANALOGIX_DP_INT_STA);

	FUNC4(dp, AUX_BLOCK, true);
	FUNC7(10, 11);
	FUNC4(dp, AUX_BLOCK, false);

	FUNC3(dp);

	/* AUX_BIT_PERIOD_EXPECTED_DELAY doesn't apply to Rockchip IP */
	if (dp->plat_data && FUNC5(dp->plat_data->dev_type))
		reg = 0;
	else
		reg = FUNC0(3);

	/* Disable AUX transaction H/W retry */
	reg |= FUNC1(0) |
	       AUX_HW_RETRY_INTERVAL_600_MICROSECONDS;

	FUNC8(reg, dp->reg_base + ANALOGIX_DP_AUX_HW_RETRY_CTL);

	/* Receive AUX Channel DEFER commands equal to DEFFER_COUNT*64 */
	reg = DEFER_CTRL_EN | FUNC2(1);
	FUNC8(reg, dp->reg_base + ANALOGIX_DP_AUX_CH_DEFER_CTL);

	/* Enable AUX channel module */
	reg = FUNC6(dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
	reg &= ~AUX_FUNC_EN_N;
	FUNC8(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
}