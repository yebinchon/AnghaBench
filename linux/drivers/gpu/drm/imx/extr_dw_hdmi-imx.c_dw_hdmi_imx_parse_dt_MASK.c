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
struct imx_hdmi {int /*<<< orphan*/  regmap; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC4(struct imx_hdmi *hdmi)
{
	struct device_node *np = hdmi->dev->of_node;

	hdmi->regmap = FUNC3(np, "gpr");
	if (FUNC0(hdmi->regmap)) {
		FUNC2(hdmi->dev, "Unable to get gpr\n");
		return FUNC1(hdmi->regmap);
	}

	return 0;
}