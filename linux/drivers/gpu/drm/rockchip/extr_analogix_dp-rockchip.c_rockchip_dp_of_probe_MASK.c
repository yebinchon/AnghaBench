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
struct rockchip_dp_device {int /*<<< orphan*/ * rst; int /*<<< orphan*/ * pclk; int /*<<< orphan*/ * grfclk; int /*<<< orphan*/ * grf; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC6(struct rockchip_dp_device *dp)
{
	struct device *dev = dp->dev;
	struct device_node *np = dev->of_node;

	dp->grf = FUNC5(np, "rockchip,grf");
	if (FUNC1(dp->grf)) {
		FUNC0(dev, "failed to get rockchip,grf property\n");
		return FUNC2(dp->grf);
	}

	dp->grfclk = FUNC3(dev, "grf");
	if (FUNC2(dp->grfclk) == -ENOENT) {
		dp->grfclk = NULL;
	} else if (FUNC2(dp->grfclk) == -EPROBE_DEFER) {
		return -EPROBE_DEFER;
	} else if (FUNC1(dp->grfclk)) {
		FUNC0(dev, "failed to get grf clock\n");
		return FUNC2(dp->grfclk);
	}

	dp->pclk = FUNC3(dev, "pclk");
	if (FUNC1(dp->pclk)) {
		FUNC0(dev, "failed to get pclk property\n");
		return FUNC2(dp->pclk);
	}

	dp->rst = FUNC4(dev, "dp");
	if (FUNC1(dp->rst)) {
		FUNC0(dev, "failed to get dp reset control\n");
		return FUNC2(dp->rst);
	}

	return 0;
}