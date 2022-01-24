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
struct fimc_context {int /*<<< orphan*/ * clocks; struct device* dev; } ;
struct device {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FIMC_CLKS_MAX ; 
 size_t FIMC_CLK_LCLK ; 
 int FIMC_CLK_WB_A ; 
 int FIMC_CLK_WB_B ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fimc_clock_names ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_context*) ; 

__attribute__((used)) static int FUNC7(struct fimc_context *ctx)
{
	struct device *fimc_dev = ctx->dev;
	struct device *dev;
	int ret, i;

	for (i = 0; i < FIMC_CLKS_MAX; i++)
		ctx->clocks[i] = FUNC0(-EINVAL);

	for (i = 0; i < FIMC_CLKS_MAX; i++) {
		if (i == FIMC_CLK_WB_A || i == FIMC_CLK_WB_B)
			dev = fimc_dev->parent;
		else
			dev = fimc_dev;

		ctx->clocks[i] = FUNC3(dev, fimc_clock_names[i]);
		if (FUNC1(ctx->clocks[i])) {
			ret = FUNC2(ctx->clocks[i]);
			FUNC5(fimc_dev, "failed to get clock: %s\n",
						fimc_clock_names[i]);
			goto e_clk_free;
		}
	}

	ret = FUNC4(ctx->clocks[FIMC_CLK_LCLK]);
	if (!ret)
		return ret;
e_clk_free:
	FUNC6(ctx);
	return ret;
}