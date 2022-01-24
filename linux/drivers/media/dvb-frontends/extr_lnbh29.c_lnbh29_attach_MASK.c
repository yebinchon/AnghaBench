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
struct lnbh29_priv {int i2c_address; int* config; struct i2c_adapter* i2c; } ;
struct lnbh29_config {int i2c_address; int data_config; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ (* set_voltage ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  release_sec; } ;
struct dvb_frontend {TYPE_1__ ops; struct lnbh29_priv* sec_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SEC_VOLTAGE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lnbh29_priv*) ; 
 struct lnbh29_priv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lnbh29_release ; 
 scalar_t__ FUNC4 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

struct dvb_frontend *FUNC5(struct dvb_frontend *fe,
				   struct lnbh29_config *cfg,
				   struct i2c_adapter *i2c)
{
	struct lnbh29_priv *priv;

	priv = FUNC3(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return NULL;

	priv->i2c_address = (cfg->i2c_address >> 1);
	priv->i2c = i2c;
	priv->config[0] = 0x01;
	priv->config[1] = cfg->data_config;
	fe->sec_priv = priv;

	if (FUNC4(fe, SEC_VOLTAGE_OFF)) {
		FUNC0(&i2c->dev, "no LNBH29 found at I2C addr 0x%02x\n",
			priv->i2c_address);
		FUNC2(priv);
		fe->sec_priv = NULL;
		return NULL;
	}

	fe->ops.release_sec = lnbh29_release;
	fe->ops.set_voltage = lnbh29_set_voltage;

	FUNC1(&i2c->dev, "LNBH29 attached at I2C addr 0x%02x\n",
		 priv->i2c_address);

	return fe;
}