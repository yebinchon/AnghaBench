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
typedef  int u8 ;
typedef  int u32 ;
struct sun4i_tmds {TYPE_1__* hdmi; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SUN4I_HDMI_PLL_DBG0_REG ; 
 int FUNC0 (int) ; 
 int SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_MASK ; 
 struct sun4i_tmds* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct sun4i_tmds *tmds = FUNC1(hw);
	u32 reg;

	if (index > 1)
		return -EINVAL;

	reg = FUNC2(tmds->hdmi->base + SUN4I_HDMI_PLL_DBG0_REG);
	reg &= ~SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_MASK;
	FUNC3(reg | FUNC0(index),
	       tmds->hdmi->base + SUN4I_HDMI_PLL_DBG0_REG);

	return 0;
}