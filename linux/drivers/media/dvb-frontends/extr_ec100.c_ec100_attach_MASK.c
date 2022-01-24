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
typedef  int u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct ec100_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct ec100_state {struct dvb_frontend frontend; int /*<<< orphan*/  config; struct i2c_adapter* i2c; } ;
struct ec100_config {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ec100_config const ec100_ops ; 
 int FUNC0 (struct ec100_state*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ec100_state*) ; 
 struct ec100_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ec100_config const*,int) ; 

struct dvb_frontend *FUNC4(const struct ec100_config *config,
	struct i2c_adapter *i2c)
{
	int ret;
	struct ec100_state *state = NULL;
	u8 tmp;

	/* allocate memory for the internal state */
	state = FUNC2(sizeof(struct ec100_state), GFP_KERNEL);
	if (state == NULL)
		goto error;

	/* setup the state */
	state->i2c = i2c;
	FUNC3(&state->config, config, sizeof(struct ec100_config));

	/* check if the demod is there */
	ret = FUNC0(state, 0x33, &tmp);
	if (ret || tmp != 0x0b)
		goto error;

	/* create dvb_frontend */
	FUNC3(&state->frontend.ops, &ec100_ops,
		sizeof(struct dvb_frontend_ops));
	state->frontend.demodulator_priv = state;

	return &state->frontend;
error:
	FUNC1(state);
	return NULL;
}