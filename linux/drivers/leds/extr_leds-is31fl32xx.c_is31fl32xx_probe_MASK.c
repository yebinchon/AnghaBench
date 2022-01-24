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
struct of_device_id {struct is31fl32xx_chipdef* data; } ;
struct is31fl32xx_priv {struct is31fl32xx_chipdef const* cdef; struct i2c_client* client; } ;
struct is31fl32xx_chipdef {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct is31fl32xx_priv* FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct is31fl32xx_priv*) ; 
 int FUNC2 (struct is31fl32xx_priv*) ; 
 int FUNC3 (struct device*,struct is31fl32xx_priv*) ; 
 int /*<<< orphan*/  leds ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_is31fl32xx_match ; 
 struct of_device_id* FUNC5 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct is31fl32xx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	const struct is31fl32xx_chipdef *cdef;
	const struct of_device_id *of_dev_id;
	struct device *dev = &client->dev;
	struct is31fl32xx_priv *priv;
	int count;
	int ret = 0;

	of_dev_id = FUNC5(of_is31fl32xx_match, dev);
	if (!of_dev_id)
		return -EINVAL;

	cdef = of_dev_id->data;

	count = FUNC4(dev->of_node);
	if (!count)
		return -EINVAL;

	priv = FUNC0(dev, FUNC6(priv, leds, count),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->client = client;
	priv->cdef = cdef;
	FUNC1(client, priv);

	ret = FUNC2(priv);
	if (ret)
		return ret;

	ret = FUNC3(dev, priv);
	if (ret)
		return ret;

	return 0;
}