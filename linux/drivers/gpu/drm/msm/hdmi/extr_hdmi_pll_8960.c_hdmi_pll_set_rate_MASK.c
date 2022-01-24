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
struct pll_rate {int num_reg; TYPE_1__* conf; } ;
struct hdmi_pll_8960 {unsigned long pixclk; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 struct pll_rate* FUNC1 (unsigned long) ; 
 struct hdmi_pll_8960* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_pll_8960*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
			     unsigned long parent_rate)
{
	struct hdmi_pll_8960 *pll = FUNC2(hw);
	const struct pll_rate *pll_rate = FUNC1(rate);
	int i;

	FUNC0("rate=%lu", rate);

	for (i = 0; i < pll_rate->num_reg; i++)
		FUNC3(pll, pll_rate->conf[i].reg, pll_rate->conf[i].val);

	pll->pixclk = rate;

	return 0;
}