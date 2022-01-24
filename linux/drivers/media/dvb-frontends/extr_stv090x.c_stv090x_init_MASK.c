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
typedef  int /*<<< orphan*/  u32 ;
struct stv090x_state {scalar_t__ device; int /*<<< orphan*/  rolloff; int /*<<< orphan*/  inversion; int /*<<< orphan*/  demod_mode; TYPE_1__* internal; struct stv090x_config* config; } ;
struct stv090x_config {scalar_t__ (* tuner_init ) (struct dvb_frontend*) ;int clk_mode; scalar_t__ (* tuner_set_mode ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  xtal; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMOD ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  ROLLOFF_CONTROL_FIELD ; 
 scalar_t__ STV0900 ; 
 int /*<<< orphan*/  FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STV090x_SYNTCTRL ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TNRCFG2 ; 
 int /*<<< orphan*/  TUNER_WAKE ; 
 int /*<<< orphan*/  TUN_IQSWAP_FIELD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct dvb_frontend*) ; 
 scalar_t__ FUNC6 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct dvb_frontend*) ; 
 scalar_t__ FUNC8 (struct stv090x_state*) ; 
 scalar_t__ FUNC9 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct stv090x_state*) ; 
 scalar_t__ FUNC11 (struct stv090x_state*,int) ; 
 scalar_t__ FUNC12 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct stv090x_state*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct dvb_frontend*) ; 
 scalar_t__ FUNC15 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct dvb_frontend *fe)
{
	struct stv090x_state *state = fe->demodulator_priv;
	const struct stv090x_config *config = state->config;
	u32 reg;

	if (state->internal->mclk == 0) {
		/* call tuner init to configure the tuner's clock output
		   divider directly before setting up the master clock of
		   the stv090x. */
		if (FUNC11(state, 1) < 0)
			goto err;

		if (config->tuner_init) {
			if (config->tuner_init(fe) < 0)
				goto err_gateoff;
		}

		if (FUNC11(state, 0) < 0)
			goto err;

		FUNC13(state, 135000000, config->xtal); /* 135 Mhz */
		FUNC4(5);
		if (FUNC15(state, STV090x_SYNTCTRL,
				      0x20 | config->clk_mode) < 0)
			goto err;
		FUNC10(state);
	}

	if (FUNC14(fe) < 0) {
		FUNC3(FE_ERROR, 1, "Error waking device");
		goto err;
	}

	if (FUNC12(state, state->demod_mode) < 0)
		goto err;

	reg = FUNC0(state, TNRCFG2);
	FUNC1(reg, TUN_IQSWAP_FIELD, state->inversion);
	if (FUNC2(state, TNRCFG2, reg) < 0)
		goto err;
	reg = FUNC0(state, DEMOD);
	FUNC1(reg, ROLLOFF_CONTROL_FIELD, state->rolloff);
	if (FUNC2(state, DEMOD, reg) < 0)
		goto err;

	if (FUNC11(state, 1) < 0)
		goto err;

	if (config->tuner_set_mode) {
		if (config->tuner_set_mode(fe, TUNER_WAKE) < 0)
			goto err_gateoff;
	}

	if (config->tuner_init) {
		if (config->tuner_init(fe) < 0)
			goto err_gateoff;
	}

	if (FUNC11(state, 0) < 0)
		goto err;

	if (state->device == STV0900) {
		if (FUNC8(state) < 0)
			goto err;
	} else {
		if (FUNC9(state) < 0)
			goto err;
	}

	return 0;

err_gateoff:
	FUNC11(state, 0);
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}