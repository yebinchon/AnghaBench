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
struct lp55xx_platform_data {int /*<<< orphan*/  enable_gpio; } ;
struct lp55xx_device_config {int dummy; } ;
struct lp55xx_chip {struct lp55xx_device_config* cfg; struct lp55xx_platform_data* pdata; TYPE_1__* cl; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOF_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lp55xx_chip*) ; 
 int FUNC6 (struct lp55xx_chip*) ; 
 int FUNC7 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

int FUNC10(struct lp55xx_chip *chip)
{
	struct lp55xx_platform_data *pdata;
	struct lp55xx_device_config *cfg;
	struct device *dev = &chip->cl->dev;
	int ret = 0;

	FUNC0(!chip);

	pdata = chip->pdata;
	cfg = chip->cfg;

	if (!pdata || !cfg)
		return -EINVAL;

	if (FUNC3(pdata->enable_gpio)) {
		ret = FUNC2(dev, pdata->enable_gpio,
					    GPIOF_DIR_OUT, "lp5523_enable");
		if (ret < 0) {
			FUNC1(dev, "could not acquire enable gpio (err=%d)\n",
				ret);
			goto err;
		}

		FUNC4(pdata->enable_gpio, 0);
		FUNC9(1000, 2000); /* Keep enable down at least 1ms */
		FUNC4(pdata->enable_gpio, 1);
		FUNC9(1000, 2000); /* 500us abs min. */
	}

	FUNC8(chip);

	/*
	 * Exact value is not available. 10 - 20ms
	 * appears to be enough for reset.
	 */
	FUNC9(10000, 20000);

	ret = FUNC6(chip);
	if (ret) {
		FUNC1(dev, "device detection err: %d\n", ret);
		goto err;
	}

	/* chip specific initialization */
	ret = FUNC7(chip);
	if (ret) {
		FUNC1(dev, "post init device err: %d\n", ret);
		goto err_post_init;
	}

	return 0;

err_post_init:
	FUNC5(chip);
err:
	return ret;
}