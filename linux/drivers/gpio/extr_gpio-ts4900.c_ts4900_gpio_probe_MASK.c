#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {char* label; TYPE_2__* parent; int /*<<< orphan*/  ngpio; } ;
struct ts4900_gpio_priv {uintptr_t input_bit; TYPE_1__ gpio_chip; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_PIN_NUMBER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,struct ts4900_gpio_priv*) ; 
 struct ts4900_gpio_priv* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ts4900_gpio_priv*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ template_chip ; 
 int /*<<< orphan*/  ts4900_regmap_config ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ts4900_gpio_priv *priv;
	u32 ngpio;
	int ret;

	if (FUNC8(client->dev.of_node, "ngpios", &ngpio))
		ngpio = DEFAULT_PIN_NUMBER;

	priv = FUNC4(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->gpio_chip = template_chip;
	priv->gpio_chip.label = "ts4900-gpio";
	priv->gpio_chip.ngpio = ngpio;
	priv->gpio_chip.parent = &client->dev;
	priv->input_bit = (uintptr_t)FUNC7(&client->dev);

	priv->regmap = FUNC5(client, &ts4900_regmap_config);
	if (FUNC0(priv->regmap)) {
		ret = FUNC1(priv->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	ret = FUNC3(&client->dev, &priv->gpio_chip, priv);
	if (ret < 0) {
		FUNC2(&client->dev, "Unable to register gpiochip\n");
		return ret;
	}

	FUNC6(client, priv);

	return 0;
}