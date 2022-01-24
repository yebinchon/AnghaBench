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
struct dw_i2c_dev {int /*<<< orphan*/  pclk; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct dw_i2c_dev *dev, bool prepare)
{
	int ret;

	if (FUNC0(dev->clk))
		return FUNC1(dev->clk);

	if (prepare) {
		/* Optional interface clock */
		ret = FUNC3(dev->pclk);
		if (ret)
			return ret;

		ret = FUNC3(dev->clk);
		if (ret)
			FUNC2(dev->pclk);

		return ret;
	}

	FUNC2(dev->clk);
	FUNC2(dev->pclk);

	return 0;
}