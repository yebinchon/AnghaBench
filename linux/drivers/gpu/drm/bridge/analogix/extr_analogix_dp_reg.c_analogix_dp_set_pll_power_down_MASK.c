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
typedef  scalar_t__ u32 ;
struct analogix_dp_device {scalar_t__ reg_base; TYPE_1__* plat_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_type; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_PD ; 
 scalar_t__ ANALOGIX_DP_PLL_CTL ; 
 scalar_t__ DP_PLL_PD ; 
 scalar_t__ RK_PLL_PD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

void FUNC3(struct analogix_dp_device *dp, bool enable)
{
	u32 reg;
	u32 mask = DP_PLL_PD;
	u32 pd_addr = ANALOGIX_DP_PLL_CTL;

	if (dp->plat_data && FUNC0(dp->plat_data->dev_type)) {
		pd_addr = ANALOGIX_DP_PD;
		mask = RK_PLL_PD;
	}

	reg = FUNC1(dp->reg_base + pd_addr);
	if (enable)
		reg |= mask;
	else
		reg &= ~mask;
	FUNC2(reg, dp->reg_base + pd_addr);
}