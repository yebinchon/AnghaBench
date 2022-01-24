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
struct analogix_dp_device {int /*<<< orphan*/  dev; scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_AUX_CH_CTL_2 ; 
 scalar_t__ ANALOGIX_DP_AUX_CH_STA ; 
 scalar_t__ ANALOGIX_DP_INT_STA ; 
 int AUX_EN ; 
 int AUX_ERR ; 
 int AUX_STATUS_MASK ; 
 int DP_TIMEOUT_LOOP_COUNT ; 
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 int RPLY_RECEIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

int FUNC4(struct analogix_dp_device *dp)
{
	int reg;
	int retval = 0;
	int timeout_loop = 0;

	/* Enable AUX CH operation */
	reg = FUNC1(dp->reg_base + ANALOGIX_DP_AUX_CH_CTL_2);
	reg |= AUX_EN;
	FUNC3(reg, dp->reg_base + ANALOGIX_DP_AUX_CH_CTL_2);

	/* Is AUX CH command reply received? */
	reg = FUNC1(dp->reg_base + ANALOGIX_DP_INT_STA);
	while (!(reg & RPLY_RECEIV)) {
		timeout_loop++;
		if (DP_TIMEOUT_LOOP_COUNT < timeout_loop) {
			FUNC0(dp->dev, "AUX CH command reply failed!\n");
			return -ETIMEDOUT;
		}
		reg = FUNC1(dp->reg_base + ANALOGIX_DP_INT_STA);
		FUNC2(10, 11);
	}

	/* Clear interrupt source for AUX CH command reply */
	FUNC3(RPLY_RECEIV, dp->reg_base + ANALOGIX_DP_INT_STA);

	/* Clear interrupt source for AUX CH access error */
	reg = FUNC1(dp->reg_base + ANALOGIX_DP_INT_STA);
	if (reg & AUX_ERR) {
		FUNC3(AUX_ERR, dp->reg_base + ANALOGIX_DP_INT_STA);
		return -EREMOTEIO;
	}

	/* Check AUX CH error access status */
	reg = FUNC1(dp->reg_base + ANALOGIX_DP_AUX_CH_STA);
	if ((reg & AUX_STATUS_MASK) != 0) {
		FUNC0(dp->dev, "AUX CH error happens: %d\n\n",
			reg & AUX_STATUS_MASK);
		return -EREMOTEIO;
	}

	return retval;
}