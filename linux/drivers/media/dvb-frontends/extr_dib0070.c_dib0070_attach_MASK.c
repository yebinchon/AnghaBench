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
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {struct dib0070_state* tuner_priv; TYPE_1__ ops; } ;
struct dib0070_state {int /*<<< orphan*/  i2c_buffer_lock; struct dvb_frontend* fe; struct i2c_adapter* i2c; struct dib0070_config* cfg; } ;
struct dib0070_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dib0070_ops ; 
 scalar_t__ FUNC0 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC1 (struct dib0070_state*) ; 
 struct dib0070_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct dvb_frontend *FUNC6(struct dvb_frontend *fe, struct i2c_adapter *i2c, struct dib0070_config *cfg)
{
	struct dib0070_state *state = FUNC2(sizeof(struct dib0070_state), GFP_KERNEL);
	if (state == NULL)
		return NULL;

	state->cfg = cfg;
	state->i2c = i2c;
	state->fe  = fe;
	FUNC4(&state->i2c_buffer_lock);
	fe->tuner_priv = state;

	if (FUNC0(fe) != 0)
		goto free_mem;

	FUNC5("DiB0070: successfully identified\n");
	FUNC3(&fe->ops.tuner_ops, &dib0070_ops, sizeof(struct dvb_tuner_ops));

	fe->tuner_priv = state;
	return fe;

free_mem:
	FUNC1(state);
	fe->tuner_priv = NULL;
	return NULL;
}