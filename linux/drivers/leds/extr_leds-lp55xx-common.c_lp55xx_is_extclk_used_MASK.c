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
struct lp55xx_chip {TYPE_1__* cl; struct clk* clk; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 scalar_t__ LP55XX_CLK_32K ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ *,char*) ; 

bool FUNC6(struct lp55xx_chip *chip)
{
	struct clk *clk;
	int err;

	clk = FUNC5(&chip->cl->dev, "32k_clk");
	if (FUNC0(clk))
		goto use_internal_clk;

	err = FUNC3(clk);
	if (err)
		goto use_internal_clk;

	if (FUNC2(clk) != LP55XX_CLK_32K) {
		FUNC1(clk);
		goto use_internal_clk;
	}

	FUNC4(&chip->cl->dev, "%dHz external clock used\n",	LP55XX_CLK_32K);

	chip->clk = clk;
	return true;

use_internal_clk:
	FUNC4(&chip->cl->dev, "internal clock used\n");
	return false;
}