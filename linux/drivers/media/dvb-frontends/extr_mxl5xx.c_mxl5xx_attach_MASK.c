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
typedef  void* u32 ;
struct dvb_frontend {struct mxl_base* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct mxl_base {int tuner_in_use; int count; int demod_num; int* xbar; struct dvb_frontend fe; int /*<<< orphan*/  mxls; int /*<<< orphan*/  mxl; int /*<<< orphan*/  mxllist; struct mxl_base* base; int /*<<< orphan*/  tune_lock; int /*<<< orphan*/  status_lock; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  type; int /*<<< orphan*/  adr; struct i2c_adapter* i2c; int /*<<< orphan*/ * i2cdev; void* tuner; void* demod; } ;
struct mxl5xx_cfg {int /*<<< orphan*/  type; int /*<<< orphan*/  adr; } ;
struct mxl {int tuner_in_use; int count; int demod_num; int* xbar; struct dvb_frontend fe; int /*<<< orphan*/  mxls; int /*<<< orphan*/  mxl; int /*<<< orphan*/  mxllist; struct mxl* base; int /*<<< orphan*/  tune_lock; int /*<<< orphan*/  status_lock; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  type; int /*<<< orphan*/  adr; struct i2c_adapter* i2c; int /*<<< orphan*/ * i2cdev; void* tuner; void* demod; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mxl_base*) ; 
 struct mxl_base* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mxl_base* FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mxl_ops ; 
 int /*<<< orphan*/  mxllist ; 
 scalar_t__ FUNC6 (struct mxl_base*,struct mxl5xx_cfg*) ; 
 int FUNC7 (struct dvb_frontend*,int) ; 

struct dvb_frontend *FUNC8(struct i2c_adapter *i2c,
	struct mxl5xx_cfg *cfg, u32 demod, u32 tuner,
	int (**fn_set_input)(struct dvb_frontend *, int))
{
	struct mxl *state;
	struct mxl_base *base;

	state = FUNC2(sizeof(struct mxl), GFP_KERNEL);
	if (!state)
		return NULL;

	state->demod = demod;
	state->tuner = tuner;
	state->tuner_in_use = 0xffffffff;
	state->i2cdev = &i2c->dev;

	base = FUNC4(i2c, cfg->adr);
	if (base) {
		base->count++;
		if (base->count > base->demod_num)
			goto fail;
		state->base = base;
	} else {
		base = FUNC2(sizeof(struct mxl_base), GFP_KERNEL);
		if (!base)
			goto fail;
		base->i2c = i2c;
		base->adr = cfg->adr;
		base->type = cfg->type;
		base->count = 1;
		FUNC5(&base->i2c_lock);
		FUNC5(&base->status_lock);
		FUNC5(&base->tune_lock);
		FUNC0(&base->mxls);

		state->base = base;
		if (FUNC6(state, cfg) < 0) {
			FUNC1(base);
			goto fail;
		}
		FUNC3(&base->mxllist, &mxllist);
	}
	state->fe.ops               = mxl_ops;
	state->xbar[0]              = 4;
	state->xbar[1]              = demod;
	state->xbar[2]              = 8;
	state->fe.demodulator_priv  = state;
	*fn_set_input               = set_input;

	FUNC3(&state->mxl, &base->mxls);
	return &state->fe;

fail:
	FUNC1(state);
	return NULL;
}