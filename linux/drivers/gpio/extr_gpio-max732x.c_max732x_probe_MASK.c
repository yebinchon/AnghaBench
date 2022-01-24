#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct max732x_platform_data {int (* setup ) (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; int /*<<< orphan*/  gpio_base; } ;
struct TYPE_11__ {int /*<<< orphan*/  ngpio; int /*<<< orphan*/  base; TYPE_1__* parent; } ;
struct max732x_chip {TYPE_5__ gpio_chip; int /*<<< orphan*/ * reg_out; int /*<<< orphan*/  lock; struct i2c_client* client_dummy; struct i2c_client* client_group_a; struct i2c_client* client_group_b; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct i2c_client {int addr; TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct max732x_platform_data* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int FUNC6 (TYPE_1__*,TYPE_5__*,struct max732x_chip*) ; 
 struct i2c_client* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct max732x_chip* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct max732x_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct max732x_chip*,int) ; 
 int FUNC11 (struct max732x_chip*,struct i2c_device_id const*) ; 
 int FUNC12 (struct max732x_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct max732x_chip*,struct i2c_device_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct max732x_platform_data* FUNC15 (TYPE_1__*) ; 
 int FUNC16 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
				   const struct i2c_device_id *id)
{
	struct max732x_platform_data *pdata;
	struct device_node *node;
	struct max732x_chip *chip;
	struct i2c_client *c;
	uint16_t addr_a, addr_b;
	int ret, nr_port;

	pdata = FUNC4(&client->dev);
	node = client->dev.of_node;

	if (!pdata && node)
		pdata = FUNC15(&client->dev);

	if (!pdata) {
		FUNC2(&client->dev, "no platform data\n");
		return -EINVAL;
	}

	chip = FUNC8(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (chip == NULL)
		return -ENOMEM;
	chip->client = client;

	nr_port = FUNC13(chip, id, pdata->gpio_base);
	chip->gpio_chip.parent = &client->dev;

	addr_a = (client->addr & 0x0f) | 0x60;
	addr_b = (client->addr & 0x0f) | 0x50;

	switch (client->addr & 0x70) {
	case 0x60:
		chip->client_group_a = client;
		if (nr_port > 8) {
			c = FUNC7(&client->dev,
						      client->adapter, addr_b);
			if (FUNC0(c)) {
				FUNC3(&client->dev,
					"Failed to allocate I2C device\n");
				return FUNC1(c);
			}
			chip->client_group_b = chip->client_dummy = c;
		}
		break;
	case 0x50:
		chip->client_group_b = client;
		if (nr_port > 8) {
			c = FUNC7(&client->dev,
						      client->adapter, addr_a);
			if (FUNC0(c)) {
				FUNC3(&client->dev,
					"Failed to allocate I2C device\n");
				return FUNC1(c);
			}
			chip->client_group_a = chip->client_dummy = c;
		}
		break;
	default:
		FUNC3(&client->dev, "invalid I2C address specified %02x\n",
				client->addr);
		return -EINVAL;
	}

	if (nr_port > 8 && !chip->client_dummy) {
		FUNC3(&client->dev,
			"Failed to allocate second group I2C device\n");
		return -ENODEV;
	}

	FUNC14(&chip->lock);

	ret = FUNC12(chip, FUNC10(chip, 0), &chip->reg_out[0]);
	if (ret)
		return ret;
	if (nr_port > 8) {
		ret = FUNC12(chip, FUNC10(chip, 8), &chip->reg_out[1]);
		if (ret)
			return ret;
	}

	ret = FUNC6(&client->dev, &chip->gpio_chip, chip);
	if (ret)
		return ret;

	ret = FUNC11(chip, id);
	if (ret)
		return ret;

	if (pdata && pdata->setup) {
		ret = pdata->setup(client, chip->gpio_chip.base,
				chip->gpio_chip.ngpio, pdata->context);
		if (ret < 0)
			FUNC5(&client->dev, "setup failed, %d\n", ret);
	}

	FUNC9(client, chip);
	return 0;
}