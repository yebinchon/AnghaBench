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
typedef  int /*<<< orphan*/  u32 ;
struct regulator {int dummy; } ;
struct pca953x_platform_data {int irq_base; int gpio_base; int (* setup ) (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; int /*<<< orphan*/  names; int /*<<< orphan*/  invert; } ;
struct TYPE_2__ {int /*<<< orphan*/  ngpio; int /*<<< orphan*/  base; } ;
struct pca953x_chip {int gpio_start; uintptr_t driver_data; struct regulator* regulator; TYPE_1__ gpio_chip; int /*<<< orphan*/ * regs; int /*<<< orphan*/  i2c_lock; struct regulator* regmap; struct i2c_client* client; int /*<<< orphan*/  names; } ;
struct i2c_device_id {uintptr_t driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
typedef  struct regulator gpio_desc ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct regulator*) ; 
 scalar_t__ PCA953X_TYPE ; 
 scalar_t__ FUNC1 (int) ; 
 int PCA_GPIO_MASK ; 
 int FUNC2 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct pca953x_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pca953x_chip*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pca953x_chip*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,struct pca953x_chip*) ; 
 struct regulator* FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct pca953x_chip* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct regulator* FUNC12 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct pca953x_chip*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pca953x_i2c_regmap ; 
 int FUNC18 (struct pca953x_chip*,int) ; 
 int /*<<< orphan*/  pca953x_regs ; 
 int /*<<< orphan*/  FUNC19 (struct pca953x_chip*,int) ; 
 int /*<<< orphan*/  pca957x_regs ; 
 int /*<<< orphan*/  FUNC20 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC21 (struct regulator*) ; 
 int FUNC22 (struct regulator*) ; 
 int FUNC23 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct i2c_client *client,
				   const struct i2c_device_id *i2c_id)
{
	struct pca953x_platform_data *pdata;
	struct pca953x_chip *chip;
	int irq_base = 0;
	int ret;
	u32 invert = 0;
	struct regulator *reg;

	chip = FUNC11(&client->dev,
			sizeof(struct pca953x_chip), GFP_KERNEL);
	if (chip == NULL)
		return -ENOMEM;

	pdata = FUNC4(&client->dev);
	if (pdata) {
		irq_base = pdata->irq_base;
		chip->gpio_start = pdata->gpio_base;
		invert = pdata->invert;
		chip->names = pdata->names;
	} else {
		struct gpio_desc *reset_gpio;

		chip->gpio_start = -1;
		irq_base = 0;

		/*
		 * See if we need to de-assert a reset pin.
		 *
		 * There is no known ACPI-enabled platforms that are
		 * using "reset" GPIO. Otherwise any of those platform
		 * must use _DSD method with corresponding property.
		 */
		reset_gpio = FUNC10(&client->dev, "reset",
						     GPIOD_OUT_LOW);
		if (FUNC0(reset_gpio))
			return FUNC2(reset_gpio);
	}

	chip->client = client;

	reg = FUNC13(&client->dev, "vcc");
	if (FUNC0(reg)) {
		ret = FUNC2(reg);
		if (ret != -EPROBE_DEFER)
			FUNC3(&client->dev, "reg get err: %d\n", ret);
		return ret;
	}
	ret = FUNC22(reg);
	if (ret) {
		FUNC3(&client->dev, "reg en err: %d\n", ret);
		return ret;
	}
	chip->regulator = reg;

	if (i2c_id) {
		chip->driver_data = i2c_id->driver_data;
	} else {
		const void *match;

		match = FUNC6(&client->dev);
		if (!match) {
			ret = -ENODEV;
			goto err_exit;
		}

		chip->driver_data = (uintptr_t)match;
	}

	FUNC15(client, chip);

	chip->regmap = FUNC12(client, &pca953x_i2c_regmap);
	if (FUNC0(chip->regmap)) {
		ret = FUNC2(chip->regmap);
		goto err_exit;
	}

	FUNC20(chip->regmap);

	FUNC17(&chip->i2c_lock);
	/*
	 * In case we have an i2c-mux controlled by a GPIO provided by an
	 * expander using the same driver higher on the device tree, read the
	 * i2c adapter nesting depth and use the retrieved value as lockdep
	 * subclass for chip->i2c_lock.
	 *
	 * REVISIT: This solution is not complete. It protects us from lockdep
	 * false positives when the expander controlling the i2c-mux is on
	 * a different level on the device tree, but not when it's on the same
	 * level on a different branch (in which case the subclass number
	 * would be the same).
	 *
	 * TODO: Once a correct solution is developed, a similar fix should be
	 * applied to all other i2c-controlled GPIO expanders (and potentially
	 * regmap-i2c).
	 */
	FUNC16(&chip->i2c_lock,
			     FUNC14(client->adapter));

	/* initialize cached registers from their original values.
	 * we can't share this chip with another i2c master.
	 */
	FUNC19(chip, chip->driver_data & PCA_GPIO_MASK);

	if (FUNC1(chip->driver_data) == PCA953X_TYPE) {
		chip->regs = &pca953x_regs;
		ret = FUNC8(chip, invert);
	} else {
		chip->regs = &pca957x_regs;
		ret = FUNC7(chip, invert);
	}
	if (ret)
		goto err_exit;

	ret = FUNC9(&client->dev, &chip->gpio_chip, chip);
	if (ret)
		goto err_exit;

	ret = FUNC18(chip, irq_base);
	if (ret)
		goto err_exit;

	if (pdata && pdata->setup) {
		ret = pdata->setup(client, chip->gpio_chip.base,
				chip->gpio_chip.ngpio, pdata->context);
		if (ret < 0)
			FUNC5(&client->dev, "setup failed, %d\n", ret);
	}

	return 0;

err_exit:
	FUNC21(chip->regulator);
	return ret;
}