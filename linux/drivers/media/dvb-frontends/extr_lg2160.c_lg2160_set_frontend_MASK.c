#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lg216x_state {TYPE_3__* cfg; int /*<<< orphan*/  current_frequency; } ;
struct dtv_frontend_properties {int /*<<< orphan*/  atscmh_rs_frame_ensemble; int /*<<< orphan*/  atscmh_parade_id; int /*<<< orphan*/  frequency; } ;
struct TYPE_4__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; TYPE_2__ ops; struct lg216x_state* demodulator_priv; } ;
struct TYPE_6__ {int lg_chip; int /*<<< orphan*/  spectral_inversion; } ;

/* Variables and functions */
#define  LG2160 129 
#define  LG2161 128 
 int FUNC0 (struct lg216x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lg216x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lg216x_state*) ; 
 int FUNC3 (struct lg216x_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lg216x_state*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lg216x_state*,int) ; 
 int FUNC6 (struct lg216x_state*) ; 
 int FUNC7 (struct lg216x_state*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*,struct dtv_frontend_properties*) ; 
 int FUNC9 (struct lg216x_state*) ; 
 int FUNC10 (struct lg216x_state*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct lg216x_state*) ; 
 int FUNC12 (struct lg216x_state*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct lg216x_state*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC17 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct dvb_frontend *fe)
{
	struct lg216x_state *state = fe->demodulator_priv;
	struct dtv_frontend_properties *c = &fe->dtv_property_cache;
	int ret;

	FUNC14("(%d)\n", fe->dtv_property_cache.frequency);

	if (fe->ops.tuner_ops.set_params) {
		ret = fe->ops.tuner_ops.set_params(fe);
		if (fe->ops.i2c_gate_ctrl)
			fe->ops.i2c_gate_ctrl(fe, 0);
		if (FUNC15(ret))
			goto fail;
		state->current_frequency = fe->dtv_property_cache.frequency;
	}

	ret = FUNC0(state, 0, 0);
	if (FUNC15(ret))
		goto fail;
	ret = FUNC1(state, 0, 0);
	if (FUNC15(ret))
		goto fail;
	ret = FUNC5(state, 1);
	if (FUNC15(ret))
		goto fail;
	ret = FUNC11(state);
	if (FUNC15(ret))
		goto fail;
	ret = FUNC3(state, state->cfg->spectral_inversion);
	if (FUNC15(ret))
		goto fail;

	/* be tuned before this point */
	ret = FUNC13(state);
	if (FUNC15(ret))
		goto fail;

	ret = FUNC4(state, 0);
	if (FUNC15(ret))
		goto fail;

	switch (state->cfg->lg_chip) {
	case LG2160:
		ret = FUNC2(state);
		if (FUNC15(ret))
			goto fail;
		break;
	case LG2161:
		ret = FUNC6(state);
		if (FUNC15(ret))
			goto fail;
		break;
	}

	ret = FUNC12(state, fe->dtv_property_cache.atscmh_parade_id);
	if (FUNC15(ret))
		goto fail;

	ret = FUNC10(state,
			fe->dtv_property_cache.atscmh_rs_frame_ensemble);
	if (FUNC15(ret))
		goto fail;

	ret = FUNC9(state);
	if (FUNC15(ret))
		goto fail;

	ret = FUNC7(state, 1);
	FUNC15(ret);

	FUNC8(fe, c);
fail:
	return ret;
}