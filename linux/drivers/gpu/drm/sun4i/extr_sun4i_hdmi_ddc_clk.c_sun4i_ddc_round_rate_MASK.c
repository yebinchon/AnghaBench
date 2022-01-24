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
struct sun4i_ddc {int /*<<< orphan*/  m_offset; int /*<<< orphan*/  pre_div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct sun4i_ddc* FUNC0 (struct clk_hw*) ; 
 long FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
				 unsigned long *prate)
{
	struct sun4i_ddc *ddc = FUNC0(hw);

	return FUNC1(rate, *prate, ddc->pre_div,
				      ddc->m_offset, NULL, NULL);
}