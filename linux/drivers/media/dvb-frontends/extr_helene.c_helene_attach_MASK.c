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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct helene_priv {int i2c_address; struct i2c_adapter* i2c; int /*<<< orphan*/  xtal; int /*<<< orphan*/  set_tuner; int /*<<< orphan*/  set_tuner_data; } ;
struct helene_config {int i2c_address; int /*<<< orphan*/  xtal; int /*<<< orphan*/  set_tuner_callback; int /*<<< orphan*/  set_tuner_priv; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct helene_priv* tuner_priv; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,struct i2c_adapter*) ; 
 int /*<<< orphan*/  helene_tuner_ops_t ; 
 scalar_t__ FUNC1 (struct helene_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct helene_priv*) ; 
 struct helene_priv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int) ; 

struct dvb_frontend *FUNC7(struct dvb_frontend *fe,
		const struct helene_config *config,
		struct i2c_adapter *i2c)
{
	struct helene_priv *priv = NULL;

	priv = FUNC3(sizeof(struct helene_priv), GFP_KERNEL);
	if (priv == NULL)
		return NULL;
	priv->i2c_address = (config->i2c_address >> 1);
	priv->i2c = i2c;
	priv->set_tuner_data = config->set_tuner_priv;
	priv->set_tuner = config->set_tuner_callback;
	priv->xtal = config->xtal;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);

	if (FUNC1(priv) != 0) {
		FUNC2(priv);
		return NULL;
	}

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0);

	FUNC4(&fe->ops.tuner_ops, &helene_tuner_ops_t,
			sizeof(struct dvb_tuner_ops));
	fe->tuner_priv = priv;
	FUNC0(&priv->i2c->dev,
			"Sony HELENE Ter attached on addr=%x at I2C adapter %p\n",
			priv->i2c_address, priv->i2c);
	return fe;
}