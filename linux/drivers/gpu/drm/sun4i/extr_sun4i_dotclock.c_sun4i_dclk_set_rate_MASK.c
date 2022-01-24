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
typedef  unsigned long u8 ;
struct sun4i_dclk {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TCON0_DCLK_REG ; 
 struct sun4i_dclk* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
			       unsigned long parent_rate)
{
	struct sun4i_dclk *dclk = FUNC1(hw);
	u8 div = parent_rate / rate;

	return FUNC2(dclk->regmap, SUN4I_TCON0_DCLK_REG,
				  FUNC0(6, 0), div);
}