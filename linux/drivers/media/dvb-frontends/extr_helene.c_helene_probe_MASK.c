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
struct i2c_device_id {int dummy; } ;
struct device {struct helene_config* platform_data; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; struct device dev; } ;
struct helene_priv {int /*<<< orphan*/  i2c; int /*<<< orphan*/  i2c_address; int /*<<< orphan*/  xtal; int /*<<< orphan*/  set_tuner; int /*<<< orphan*/  set_tuner_data; } ;
struct helene_config {int /*<<< orphan*/  xtal; int /*<<< orphan*/  set_tuner_callback; int /*<<< orphan*/  set_tuner_priv; struct dvb_frontend* fe; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct helene_priv* tuner_priv; TYPE_1__ ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct helene_priv* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  helene_tuner_ops ; 
 scalar_t__ FUNC2 (struct helene_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct helene_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct helene_config *config = client->dev.platform_data;
	struct dvb_frontend *fe = config->fe;
	struct device *dev = &client->dev;
	struct helene_priv *priv;

	priv = FUNC1(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->i2c_address = client->addr;
	priv->i2c = client->adapter;
	priv->set_tuner_data = config->set_tuner_priv;
	priv->set_tuner = config->set_tuner_callback;
	priv->xtal = config->xtal;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);

	if (FUNC2(priv) != 0)
		return -EINVAL;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0);

	FUNC4(&fe->ops.tuner_ops, &helene_tuner_ops,
	       sizeof(struct dvb_tuner_ops));
	fe->tuner_priv = priv;
	FUNC3(client, priv);

	FUNC0(dev, "Sony HELENE attached on addr=%x at I2C adapter %p\n",
		 priv->i2c_address, priv->i2c);

	return 0;
}