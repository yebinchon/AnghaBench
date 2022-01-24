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
struct sun4i_dclk {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SUN4I_TCON0_IO_POL_REG ; 
 struct sun4i_dclk* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, int degrees)
{
	struct sun4i_dclk *dclk = FUNC1(hw);
	u32 val = degrees / 120;

	val <<= 28;

	FUNC2(dclk->regmap, SUN4I_TCON0_IO_POL_REG,
			   FUNC0(29, 28),
			   val);

	return 0;
}