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
struct stts751_priv {int notify_max; int notify_min; int config; int /*<<< orphan*/  dev; int /*<<< orphan*/  access_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int STTS751_CONF_EVENT_DIS ; 
 int STTS751_CONF_STOP ; 
 int /*<<< orphan*/  STTS751_REG_CONF ; 
 int /*<<< orphan*/  STTS751_REG_REV_ID ; 
 int /*<<< orphan*/  STTS751_REG_SMBUS_TO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct stts751_priv*,int /*<<< orphan*/ ) ; 
 struct stts751_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct stts751_priv*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stts751_groups ; 
 int FUNC10 (struct stts751_priv*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct stts751_priv *priv;
	int ret;
	bool smbus_nto;
	int rev_id;

	priv = FUNC5(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->client = client;
	priv->notify_max = true;
	priv->notify_min = true;
	FUNC6(client, priv);
	FUNC9(&priv->access_lock);

	if (FUNC2(&client->dev,
				    "smbus-timeout-disable")) {
		smbus_nto = FUNC3(&client->dev,
						      "smbus-timeout-disable");

		ret = FUNC8(client,	STTS751_REG_SMBUS_TO,
						smbus_nto ? 0 : 0x80);
		if (ret)
			return ret;
	}

	rev_id = FUNC7(client, STTS751_REG_REV_ID);
	if (rev_id < 0)
		return -ENODEV;
	if (rev_id != 0x1) {
		FUNC1(&client->dev, "Chip revision 0x%x is untested\n",
			rev_id);
	}

	ret = FUNC10(priv);
	if (ret)
		return ret;

	priv->config &= ~(STTS751_CONF_STOP | STTS751_CONF_EVENT_DIS);
	ret = FUNC8(client,	STTS751_REG_CONF, priv->config);
	if (ret)
		return ret;

	priv->dev = FUNC4(&client->dev,
							client->name, priv,
							stts751_groups);
	return FUNC0(priv->dev);
}