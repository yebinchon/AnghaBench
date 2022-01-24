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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cx24117_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct cx24117_state {int demod; struct dvb_frontend frontend; struct cx24117_priv* priv; } ;
struct cx24117_priv {struct i2c_adapter* i2c; int /*<<< orphan*/  fe_lock; int /*<<< orphan*/  demod_address; } ;
struct cx24117_config {int /*<<< orphan*/  demod_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC0 (struct cx24117_priv**,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cx24117_ops ; 
 int /*<<< orphan*/  FUNC1 (struct cx24117_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct cx24117_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct dvb_frontend *FUNC7(const struct cx24117_config *config,
	struct i2c_adapter *i2c)
{
	struct cx24117_state *state = NULL;
	struct cx24117_priv *priv = NULL;
	int demod = 0;

	/* get the common data struct for both demods */
	demod = FUNC0(&priv, i2c, config->demod_address);

	switch (demod) {
	case 0:
		FUNC2(&i2c->dev,
			"%s: Error attaching frontend %d\n",
			KBUILD_MODNAME, demod);
		goto error1;
		break;
	case 1:
		/* new priv instance */
		priv->i2c = i2c;
		priv->demod_address = config->demod_address;
		FUNC6(&priv->fe_lock);
		break;
	default:
		/* existing priv instance */
		break;
	}

	/* allocate memory for the internal state */
	state = FUNC4(sizeof(struct cx24117_state), GFP_KERNEL);
	if (state == NULL)
		goto error2;

	state->demod = demod - 1;
	state->priv = priv;

	FUNC3(&state->priv->i2c->dev,
		"%s: Attaching frontend %d\n",
		KBUILD_MODNAME, state->demod);

	/* create dvb_frontend */
	FUNC5(&state->frontend.ops, &cx24117_ops,
		sizeof(struct dvb_frontend_ops));
	state->frontend.demodulator_priv = state;
	return &state->frontend;

error2:
	FUNC1(priv);
error1:
	return NULL;
}