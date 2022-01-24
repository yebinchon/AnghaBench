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
typedef  int /*<<< orphan*/  u8 ;
struct sun4i_ddc {int /*<<< orphan*/  reg; int /*<<< orphan*/  m_offset; int /*<<< orphan*/  pre_div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun4i_ddc* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
			      unsigned long parent_rate)
{
	struct sun4i_ddc *ddc = FUNC2(hw);
	u8 div_m, div_n;

	FUNC4(rate, parent_rate, ddc->pre_div,
			       ddc->m_offset, &div_m, &div_n);

	FUNC3(ddc->reg,
			   FUNC0(div_m) |
			   FUNC1(div_n));

	return 0;
}