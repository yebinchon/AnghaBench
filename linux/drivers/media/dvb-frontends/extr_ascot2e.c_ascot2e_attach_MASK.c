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
typedef  int u8 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct ascot2e_priv* tuner_priv; TYPE_1__ ops; } ;
struct ascot2e_priv {int i2c_address; struct i2c_adapter* i2c; int /*<<< orphan*/  state; int /*<<< orphan*/  set_tuner; int /*<<< orphan*/  set_tuner_data; } ;
struct ascot2e_config {int i2c_address; int /*<<< orphan*/  set_tuner_callback; int /*<<< orphan*/  set_tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STATE_SLEEP ; 
 int /*<<< orphan*/  ascot2e_tuner_ops ; 
 int /*<<< orphan*/  FUNC0 (struct ascot2e_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ascot2e_priv*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,struct i2c_adapter*) ; 
 struct ascot2e_priv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,int) ; 

struct dvb_frontend *FUNC8(struct dvb_frontend *fe,
				    const struct ascot2e_config *config,
				    struct i2c_adapter *i2c)
{
	u8 data[4];
	struct ascot2e_priv *priv = NULL;

	priv = FUNC3(sizeof(struct ascot2e_priv), GFP_KERNEL);
	if (priv == NULL)
		return NULL;
	priv->i2c_address = (config->i2c_address >> 1);
	priv->i2c = i2c;
	priv->set_tuner_data = config->set_tuner_priv;
	priv->set_tuner = config->set_tuner_callback;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);

	/* 16 MHz xTal frequency */
	data[0] = 16;
	/* VCO current setting */
	data[1] = 0x06;
	/* Logic wake up, CPU boot */
	data[2] = 0xC4;
	data[3] = 0x40;
	FUNC1(priv, 0x01, data, 4);
	/* RFVGA optimization setting (RF_DIST0 - RF_DIST2) */
	data[0] = 0x10;
	data[1] = 0x3F;
	data[2] = 0x25;
	FUNC1(priv, 0x22, data, 3);
	/* PLL mode setting */
	FUNC0(priv, 0x28, 0x1e);
	/* RSSI setting */
	FUNC0(priv, 0x59, 0x04);
	/* TODO check CPU HW error state here */
	FUNC5(80);
	/* Xtal oscillator current control setting */
	FUNC0(priv, 0x4c, 0x01);
	/* XOSC_SEL=100uA */
	FUNC0(priv, 0x07, 0x04);
	/* CPU deep sleep */
	FUNC0(priv, 0x04, 0x00);
	/* Logic sleep */
	FUNC0(priv, 0x03, 0xc0);
	/* Power save setting */
	data[0] = 0x00;
	data[1] = 0x04;
	FUNC1(priv, 0x14, data, 2);
	FUNC0(priv, 0x50, 0x01);
	priv->state = STATE_SLEEP;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0);

	FUNC4(&fe->ops.tuner_ops, &ascot2e_tuner_ops,
				sizeof(struct dvb_tuner_ops));
	fe->tuner_priv = priv;
	FUNC2(&priv->i2c->dev,
		"Sony ASCOT2E attached on addr=%x at I2C adapter %p\n",
		priv->i2c_address, priv->i2c);
	return fe;
}