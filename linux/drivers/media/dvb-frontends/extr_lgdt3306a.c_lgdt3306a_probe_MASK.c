#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * release; } ;
struct TYPE_10__ {TYPE_1__ ops; } ;
struct lgdt3306a_state {struct dvb_frontend** fe; TYPE_4__* muxc; int /*<<< orphan*/ * i2c_adapter; TYPE_2__ frontend; int /*<<< orphan*/  i2c_addr; } ;
struct lgdt3306a_config {struct dvb_frontend** fe; TYPE_4__* muxc; int /*<<< orphan*/ * i2c_adapter; TYPE_2__ frontend; int /*<<< orphan*/  i2c_addr; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {TYPE_5__ dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct TYPE_11__ {int /*<<< orphan*/ * i2c_gate_ctrl; } ;
struct dvb_frontend {TYPE_3__ ops; struct lgdt3306a_state* demodulator_priv; } ;
struct TYPE_12__ {int /*<<< orphan*/ * adapter; struct i2c_client* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_MUX_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,int) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct lgdt3306a_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct lgdt3306a_state*) ; 
 struct lgdt3306a_state* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct dvb_frontend* FUNC7 (struct lgdt3306a_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lgdt3306a_deselect ; 
 int /*<<< orphan*/  lgdt3306a_select ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct lgdt3306a_config *config;
	struct lgdt3306a_state *state;
	struct dvb_frontend *fe;
	int ret;

	config = FUNC6(client->dev.platform_data,
			 sizeof(struct lgdt3306a_config), GFP_KERNEL);
	if (config == NULL) {
		ret = -ENOMEM;
		goto fail;
	}

	config->i2c_addr = client->addr;
	fe = FUNC7(config, client->adapter);
	if (fe == NULL) {
		ret = -ENODEV;
		goto err_fe;
	}

	FUNC4(client, fe->demodulator_priv);
	state = fe->demodulator_priv;
	state->frontend.ops.release = NULL;

	/* create mux i2c adapter for tuner */
	state->muxc = FUNC3(client->adapter, &client->dev,
				  1, 0, I2C_MUX_LOCKED,
				  lgdt3306a_select, lgdt3306a_deselect);
	if (!state->muxc) {
		ret = -ENOMEM;
		goto err_kfree;
	}
	state->muxc->priv = client;
	ret = FUNC2(state->muxc, 0, 0, 0);
	if (ret)
		goto err_kfree;

	/* create dvb_frontend */
	fe->ops.i2c_gate_ctrl = NULL;
	*config->i2c_adapter = state->muxc->adapter[0];
	*config->fe = fe;

	FUNC0(&client->dev, "LG Electronics LGDT3306A successfully identified\n");

	return 0;

err_kfree:
	FUNC5(state);
err_fe:
	FUNC5(config);
fail:
	FUNC1(&client->dev, "probe failed = %d\n", ret);
	return ret;
}