#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct clk_init_data* init; } ;
struct sun4i_tmds {TYPE_2__ hw; int /*<<< orphan*/  div_offset; struct sun4i_hdmi* hdmi; } ;
struct sun4i_hdmi {int /*<<< orphan*/  tmds_clk; int /*<<< orphan*/  dev; TYPE_1__* variant; int /*<<< orphan*/  pll1_clk; int /*<<< orphan*/  pll0_clk; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  tmds_clk_div_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct sun4i_tmds* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun4i_tmds_ops ; 

int FUNC5(struct sun4i_hdmi *hdmi)
{
	struct clk_init_data init;
	struct sun4i_tmds *tmds;
	const char *parents[2];

	parents[0] = FUNC2(hdmi->pll0_clk);
	if (!parents[0])
		return -ENODEV;

	parents[1] = FUNC2(hdmi->pll1_clk);
	if (!parents[1])
		return -ENODEV;

	tmds = FUNC4(hdmi->dev, sizeof(*tmds), GFP_KERNEL);
	if (!tmds)
		return -ENOMEM;

	init.name = "hdmi-tmds";
	init.ops = &sun4i_tmds_ops;
	init.parent_names = parents;
	init.num_parents = 2;
	init.flags = CLK_SET_RATE_PARENT;

	tmds->hdmi = hdmi;
	tmds->hw.init = &init;
	tmds->div_offset = hdmi->variant->tmds_clk_div_offset;

	hdmi->tmds_clk = FUNC3(hdmi->dev, &tmds->hw);
	if (FUNC0(hdmi->tmds_clk))
		return FUNC1(hdmi->tmds_clk);

	return 0;
}