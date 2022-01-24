#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rockchip_hdmi {int /*<<< orphan*/ * grf_clk; TYPE_1__* dev; int /*<<< orphan*/ * vpll_clk; int /*<<< orphan*/ * regmap; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC5(struct rockchip_hdmi *hdmi)
{
	struct device_node *np = hdmi->dev->of_node;

	hdmi->regmap = FUNC4(np, "rockchip,grf");
	if (FUNC1(hdmi->regmap)) {
		FUNC0(hdmi->dev, "Unable to get rockchip,grf\n");
		return FUNC2(hdmi->regmap);
	}

	hdmi->vpll_clk = FUNC3(hdmi->dev, "vpll");
	if (FUNC2(hdmi->vpll_clk) == -ENOENT) {
		hdmi->vpll_clk = NULL;
	} else if (FUNC2(hdmi->vpll_clk) == -EPROBE_DEFER) {
		return -EPROBE_DEFER;
	} else if (FUNC1(hdmi->vpll_clk)) {
		FUNC0(hdmi->dev, "failed to get grf clock\n");
		return FUNC2(hdmi->vpll_clk);
	}

	hdmi->grf_clk = FUNC3(hdmi->dev, "grf");
	if (FUNC2(hdmi->grf_clk) == -ENOENT) {
		hdmi->grf_clk = NULL;
	} else if (FUNC2(hdmi->grf_clk) == -EPROBE_DEFER) {
		return -EPROBE_DEFER;
	} else if (FUNC1(hdmi->grf_clk)) {
		FUNC0(hdmi->dev, "failed to get grf clock\n");
		return FUNC2(hdmi->grf_clk);
	}

	return 0;
}