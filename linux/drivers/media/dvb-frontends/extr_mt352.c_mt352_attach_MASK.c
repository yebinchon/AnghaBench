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
struct dvb_frontend {struct mt352_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct mt352_state {struct dvb_frontend frontend; int /*<<< orphan*/  config; struct i2c_adapter* i2c; } ;
struct mt352_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_ID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ ID_MT352 ; 
 int /*<<< orphan*/  FUNC0 (struct mt352_state*) ; 
 struct mt352_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mt352_config const*,int) ; 
 struct mt352_config const mt352_ops ; 
 scalar_t__ FUNC3 (struct mt352_state*,int /*<<< orphan*/ ) ; 

struct dvb_frontend* FUNC4(const struct mt352_config* config,
				  struct i2c_adapter* i2c)
{
	struct mt352_state* state = NULL;

	/* allocate memory for the internal state */
	state = FUNC1(sizeof(struct mt352_state), GFP_KERNEL);
	if (state == NULL) goto error;

	/* setup the state */
	state->i2c = i2c;
	FUNC2(&state->config,config,sizeof(struct mt352_config));

	/* check if the demod is there */
	if (FUNC3(state, CHIP_ID) != ID_MT352) goto error;

	/* create dvb_frontend */
	FUNC2(&state->frontend.ops, &mt352_ops, sizeof(struct dvb_frontend_ops));
	state->frontend.demodulator_priv = state;
	return &state->frontend;

error:
	FUNC0(state);
	return NULL;
}