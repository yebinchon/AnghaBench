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
struct tc358764 {int /*<<< orphan*/  panel; struct device* dev; int /*<<< orphan*/  gpio_reset; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tc358764 *ctx)
{
	struct device *dev = ctx->dev;
	int ret;

	ctx->gpio_reset = FUNC3(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ctx->gpio_reset)) {
		FUNC2(dev, "no reset GPIO pin provided\n");
		return FUNC1(ctx->gpio_reset);
	}

	ret = FUNC4(ctx->dev->of_node, 1, 0, &ctx->panel,
					  NULL);
	if (ret && ret != -EPROBE_DEFER)
		FUNC2(dev, "cannot find panel (%d)\n", ret);

	return ret;
}