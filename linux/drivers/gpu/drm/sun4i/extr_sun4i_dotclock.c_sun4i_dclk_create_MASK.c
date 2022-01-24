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
struct sun4i_tcon {int /*<<< orphan*/  dclk; int /*<<< orphan*/  regs; int /*<<< orphan*/  sclk0; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct sun4i_dclk {TYPE_1__ hw; int /*<<< orphan*/  regmap; struct sun4i_tcon* tcon; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,TYPE_1__*) ; 
 struct sun4i_dclk* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  sun4i_dclk_ops ; 

int FUNC6(struct device *dev, struct sun4i_tcon *tcon)
{
	const char *clk_name, *parent_name;
	struct clk_init_data init;
	struct sun4i_dclk *dclk;
	int ret;

	parent_name = FUNC2(tcon->sclk0);
	ret = FUNC5(dev->of_node,
					    "clock-output-names", 0,
					    &clk_name);
	if (ret)
		return ret;

	dclk = FUNC4(dev, sizeof(*dclk), GFP_KERNEL);
	if (!dclk)
		return -ENOMEM;
	dclk->tcon = tcon;

	init.name = clk_name;
	init.ops = &sun4i_dclk_ops;
	init.parent_names = &parent_name;
	init.num_parents = 1;
	init.flags = CLK_SET_RATE_PARENT;

	dclk->regmap = tcon->regs;
	dclk->hw.init = &init;

	tcon->dclk = FUNC3(dev, &dclk->hw);
	if (FUNC0(tcon->dclk))
		return FUNC1(tcon->dclk);

	return 0;
}