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
typedef  unsigned int u32 ;
struct clk_hw {int dummy; } ;
struct clk_bytediv {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct clk_bytediv* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_bytediv *bytediv = FUNC3(hw);
	u32 val;
	unsigned int factor;

	factor = FUNC0(rate);

	val = FUNC1(bytediv->reg);
	val |= (factor - 1) & 0xff;
	FUNC2(bytediv->reg, val);

	return 0;
}