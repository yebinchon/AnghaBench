#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {scalar_t__ transmission_mode; scalar_t__ guard_interval; scalar_t__ modulation; scalar_t__ code_rate_HP; int /*<<< orphan*/  bandwidth_hz; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib3000mc_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dib3000mc_state {int /*<<< orphan*/  sfn_workaround_active; int /*<<< orphan*/  current_bandwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FEC_AUTO ; 
 scalar_t__ GUARD_INTERVAL_AUTO ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int /*<<< orphan*/  OUTMODE_MPEG2_FIFO ; 
 scalar_t__ QAM_AUTO ; 
 scalar_t__ TRANSMISSION_MODE_AUTO ; 
 int /*<<< orphan*/  buggy_sfn_workaround ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,struct dtv_frontend_properties*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib3000mc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib3000mc_state*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC10(struct dvb_frontend *fe)
{
	struct dtv_frontend_properties *fep = &fe->dtv_property_cache;
	struct dib3000mc_state *state = fe->demodulator_priv;
	int ret;

	FUNC5(state, OUTMODE_HIGH_Z);

	state->current_bandwidth = fep->bandwidth_hz;
	FUNC4(state, FUNC0(fep->bandwidth_hz));

	/* maybe the parameter has been changed */
	state->sfn_workaround_active = buggy_sfn_workaround;

	if (fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe);
		FUNC8(100);
	}

	if (fep->transmission_mode  == TRANSMISSION_MODE_AUTO ||
	    fep->guard_interval == GUARD_INTERVAL_AUTO ||
	    fep->modulation     == QAM_AUTO ||
	    fep->code_rate_HP   == FEC_AUTO) {
		int i = 1000, found;

		FUNC2(fe);
		do {
			FUNC8(1);
			found = FUNC1(fe);
		} while (found == 0 && i--);

		FUNC7("autosearch returns: %d\n",found);
		if (found == 0 || found == 1)
			return 0; // no channel found

		FUNC3(fe, fep);
	}

	ret = FUNC6(fe);

	/* make this a config parameter */
	FUNC5(state, OUTMODE_MPEG2_FIFO);
	return ret;
}