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
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct sprd_i2c {int src_clk; struct clk* clk; TYPE_1__ adap; int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 scalar_t__ FUNC3 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct sprd_i2c *i2c_dev)
{
	struct clk *clk_i2c, *clk_parent;

	clk_i2c = FUNC7(i2c_dev->dev, "i2c");
	if (FUNC0(clk_i2c)) {
		FUNC6(i2c_dev->dev, "i2c%d can't get the i2c clock\n",
			 i2c_dev->adap.nr);
		clk_i2c = NULL;
	}

	clk_parent = FUNC7(i2c_dev->dev, "source");
	if (FUNC0(clk_parent)) {
		FUNC6(i2c_dev->dev, "i2c%d can't get the source clock\n",
			 i2c_dev->adap.nr);
		clk_parent = NULL;
	}

	if (FUNC3(clk_i2c, clk_parent))
		i2c_dev->src_clk = FUNC2(clk_i2c);
	else
		i2c_dev->src_clk = 26000000;

	FUNC4(i2c_dev->dev, "i2c%d set source clock is %d\n",
		i2c_dev->adap.nr, i2c_dev->src_clk);

	i2c_dev->clk = FUNC7(i2c_dev->dev, "enable");
	if (FUNC0(i2c_dev->clk)) {
		FUNC5(i2c_dev->dev, "i2c%d can't get the enable clock\n",
			i2c_dev->adap.nr);
		return FUNC1(i2c_dev->clk);
	}

	return 0;
}