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
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; } ;
struct gpio_chip {int can_sleep; int base; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  owner; int /*<<< orphan*/  label; int /*<<< orphan*/  names; int /*<<< orphan*/ * parent; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; } ;
struct adp5588_gpio_platform_data {int gpio_start; unsigned int pullup_dis_mask; int (* setup ) (struct i2c_client*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; int /*<<< orphan*/  names; } ;
struct adp5588_gpio {struct gpio_chip gpio_chip; void** dir; void** dat_out; struct i2c_client* client; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ADP5588_DEVICE_ID_MASK ; 
 int /*<<< orphan*/  ADP5588_MAXGPIO ; 
 scalar_t__ DEV_ID ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GPIO_DAT_OUT1 ; 
 scalar_t__ GPIO_DIR1 ; 
 scalar_t__ GPIO_INT_EN1 ; 
 scalar_t__ GPIO_PULL1 ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ KP_GPIO1 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  adp5588_gpio_direction_input ; 
 int /*<<< orphan*/  adp5588_gpio_direction_output ; 
 int /*<<< orphan*/  adp5588_gpio_get_value ; 
 void* FUNC2 (struct i2c_client*,scalar_t__) ; 
 int /*<<< orphan*/  adp5588_gpio_set_value ; 
 int FUNC3 (struct i2c_client*,scalar_t__,unsigned int) ; 
 int FUNC4 (struct adp5588_gpio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct adp5588_gpio_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct gpio_chip*,struct adp5588_gpio*) ; 
 struct adp5588_gpio* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct adp5588_gpio*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct i2c_client*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client)
{
	struct adp5588_gpio_platform_data *pdata =
			FUNC6(&client->dev);
	struct adp5588_gpio *dev;
	struct gpio_chip *gc;
	int ret, i, revid;
	unsigned int pullup_dis_mask = 0;

	if (!FUNC10(client->adapter,
					I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC5(&client->dev, "SMBUS Byte Data not Supported\n");
		return -EIO;
	}

	dev = FUNC9(&client->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->client = client;

	gc = &dev->gpio_chip;
	gc->direction_input = adp5588_gpio_direction_input;
	gc->direction_output = adp5588_gpio_direction_output;
	gc->get = adp5588_gpio_get_value;
	gc->set = adp5588_gpio_set_value;
	gc->can_sleep = true;
	gc->base = -1;
	gc->parent = &client->dev;

	if (pdata) {
		gc->base = pdata->gpio_start;
		gc->names = pdata->names;
		pullup_dis_mask = pdata->pullup_dis_mask;
	}

	gc->ngpio = ADP5588_MAXGPIO;
	gc->label = client->name;
	gc->owner = THIS_MODULE;

	FUNC12(&dev->lock);

	ret = FUNC2(dev->client, DEV_ID);
	if (ret < 0)
		return ret;

	revid = ret & ADP5588_DEVICE_ID_MASK;

	for (i = 0, ret = 0; i <= FUNC0(ADP5588_MAXGPIO); i++) {
		dev->dat_out[i] = FUNC2(client, GPIO_DAT_OUT1 + i);
		dev->dir[i] = FUNC2(client, GPIO_DIR1 + i);
		ret |= FUNC3(client, KP_GPIO1 + i, 0);
		ret |= FUNC3(client, GPIO_PULL1 + i,
				(pullup_dis_mask >> (8 * i)) & 0xFF);
		ret |= FUNC3(client, GPIO_INT_EN1 + i, 0);
		if (ret)
			return ret;
	}

	if (client->irq) {
		if (FUNC1(revid)) {
			FUNC7(&client->dev, "GPIO int not supported\n");
		} else {
			ret = FUNC4(dev);
			if (ret)
				return ret;
		}
	}

	ret = FUNC8(&client->dev, &dev->gpio_chip, dev);
	if (ret)
		return ret;

	if (pdata && pdata->setup) {
		ret = pdata->setup(client, gc->base, gc->ngpio, pdata->context);
		if (ret < 0)
			FUNC7(&client->dev, "setup failed, %d\n", ret);
	}

	FUNC11(client, dev);

	return 0;
}