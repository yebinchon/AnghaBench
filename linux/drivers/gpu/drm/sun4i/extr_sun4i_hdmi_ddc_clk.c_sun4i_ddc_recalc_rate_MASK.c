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
struct sun4i_ddc {unsigned long pre_div; unsigned long m_offset; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct sun4i_ddc* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
					    unsigned long parent_rate)
{
	struct sun4i_ddc *ddc = FUNC0(hw);
	unsigned int reg;
	u8 m, n;

	FUNC1(ddc->reg, &reg);
	m = (reg >> 3) & 0xf;
	n = reg & 0x7;

	return (((parent_rate / ddc->pre_div) / 10) >> n) /
	       (m + ddc->m_offset);
}