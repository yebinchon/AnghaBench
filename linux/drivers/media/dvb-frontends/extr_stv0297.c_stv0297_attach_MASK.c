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
struct dvb_frontend {struct stv0297_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct stv0297_state {struct dvb_frontend frontend; scalar_t__ base_freq; scalar_t__ last_ber; struct i2c_adapter* i2c; struct stv0297_config const* config; } ;
struct stv0297_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct stv0297_state*) ; 
 struct stv0297_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stv0297_ops ; 
 int FUNC3 (struct stv0297_state*,int) ; 

struct dvb_frontend *FUNC4(const struct stv0297_config *config,
				    struct i2c_adapter *i2c)
{
	struct stv0297_state *state = NULL;

	/* allocate memory for the internal state */
	state = FUNC1(sizeof(struct stv0297_state), GFP_KERNEL);
	if (state == NULL)
		goto error;

	/* setup the state */
	state->config = config;
	state->i2c = i2c;
	state->last_ber = 0;
	state->base_freq = 0;

	/* check if the demod is there */
	if ((FUNC3(state, 0x80) & 0x70) != 0x20)
		goto error;

	/* create dvb_frontend */
	FUNC2(&state->frontend.ops, &stv0297_ops, sizeof(struct dvb_frontend_ops));
	state->frontend.demodulator_priv = state;
	return &state->frontend;

error:
	FUNC0(state);
	return NULL;
}