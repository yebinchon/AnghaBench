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
struct mtk_i2c {scalar_t__ clk_dma; scalar_t__ clk_main; scalar_t__ clk_pmic; scalar_t__ have_pmic; scalar_t__ clk_arb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mtk_i2c *i2c)
{
	int ret;

	ret = FUNC1(i2c->clk_dma);
	if (ret)
		return ret;

	ret = FUNC1(i2c->clk_main);
	if (ret)
		goto err_main;

	if (i2c->have_pmic) {
		ret = FUNC1(i2c->clk_pmic);
		if (ret)
			goto err_pmic;
	}

	if (i2c->clk_arb) {
		ret = FUNC1(i2c->clk_arb);
		if (ret)
			goto err_arb;
	}

	return 0;

err_arb:
	if (i2c->have_pmic)
		FUNC0(i2c->clk_pmic);
err_pmic:
	FUNC0(i2c->clk_main);
err_main:
	FUNC0(i2c->clk_dma);

	return ret;
}