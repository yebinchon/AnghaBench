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
struct lp55xx_platform_data {int /*<<< orphan*/  enable_gpio; } ;
struct lp55xx_chip {scalar_t__ clk; struct lp55xx_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct lp55xx_chip *chip)
{
	struct lp55xx_platform_data *pdata = chip->pdata;

	if (chip->clk)
		FUNC0(chip->clk);

	if (FUNC1(pdata->enable_gpio))
		FUNC2(pdata->enable_gpio, 0);
}