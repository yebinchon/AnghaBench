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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ label; } ;
struct cxd2820r_priv {int /*<<< orphan*/ * regmap; int /*<<< orphan*/ * client; TYPE_1__ gpio_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct cxd2820r_priv* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxd2820r_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct cxd2820r_priv *priv = FUNC2(client);

	FUNC0(&client->dev, "\n");

#ifdef CONFIG_GPIOLIB
	if (priv->gpio_chip.label)
		gpiochip_remove(&priv->gpio_chip);
#endif
	FUNC5(priv->regmap[1]);
	FUNC3(priv->client[1]);

	FUNC5(priv->regmap[0]);

	FUNC4(priv);

	return 0;
}