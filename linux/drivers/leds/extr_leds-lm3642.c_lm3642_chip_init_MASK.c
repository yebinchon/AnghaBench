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
struct lm3642_platform_data {int /*<<< orphan*/  tx_pin; } ;
struct lm3642_chip_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; struct lm3642_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_PIN_ENABLE_MASK ; 
 int /*<<< orphan*/  REG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct lm3642_chip_data *chip)
{
	int ret;
	struct lm3642_platform_data *pdata = chip->pdata;

	/* set enable register */
	ret = FUNC1(chip->regmap, REG_ENABLE, EX_PIN_ENABLE_MASK,
				 pdata->tx_pin);
	if (ret < 0)
		FUNC0(chip->dev, "Failed to update REG_ENABLE Register\n");
	return ret;
}