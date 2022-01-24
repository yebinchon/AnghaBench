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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct stv090x_state {scalar_t__ device; int demod; TYPE_2__* internal; TYPE_1__* config; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  demod_lock; } ;
struct TYPE_3__ {scalar_t__ (* tuner_sleep ) (struct dvb_frontend*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ADC1_PON_FIELD ; 
 int /*<<< orphan*/  ADC2_PON_FIELD ; 
 int /*<<< orphan*/  DISEQC1_PON_FIELD ; 
 int /*<<< orphan*/  DISEQC2_PON_FIELD ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  STANDBY_FIELD ; 
 int /*<<< orphan*/  STOP_CLKADCI1_FIELD ; 
 int /*<<< orphan*/  STOP_CLKADCI2_FIELD ; 
 int /*<<< orphan*/  STOP_CLKFEC_FIELD ; 
 int /*<<< orphan*/  STOP_CLKPKDT1_FIELD ; 
 int /*<<< orphan*/  STOP_CLKPKDT2_FIELD ; 
 int /*<<< orphan*/  STOP_CLKSAMP1_FIELD ; 
 int /*<<< orphan*/  STOP_CLKSAMP2_FIELD ; 
 int /*<<< orphan*/  STOP_CLKTS_FIELD ; 
 int /*<<< orphan*/  STOP_CLKVIT1_FIELD ; 
 int /*<<< orphan*/  STOP_CLKVIT2_FIELD ; 
 scalar_t__ STV0900 ; 
#define  STV090x_DEMODULATOR_0 129 
#define  STV090x_DEMODULATOR_1 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STV090x_STOPCLK1 ; 
 int /*<<< orphan*/  STV090x_STOPCLK2 ; 
 int /*<<< orphan*/  STV090x_SYNTCTRL ; 
 int /*<<< orphan*/  STV090x_TSTTNR1 ; 
 int /*<<< orphan*/  STV090x_TSTTNR2 ; 
 int /*<<< orphan*/  STV090x_TSTTNR3 ; 
 int /*<<< orphan*/  STV090x_TSTTNR4 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct dvb_frontend*) ; 
 scalar_t__ FUNC6 (struct stv090x_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg;
	u8 full_standby = 0;

	if (FUNC6(state, 1) < 0)
		goto err;

	if (state->config->tuner_sleep) {
		if (state->config->tuner_sleep(fe) < 0)
			goto err_gateoff;
	}

	if (FUNC6(state, 0) < 0)
		goto err;

	FUNC2(FE_DEBUG, 1, "Set %s(%d) to sleep",
		state->device == STV0900 ? "STV0900" : "STV0903",
		state->demod);

	FUNC3(&state->internal->demod_lock);

	switch (state->demod) {
	case STV090x_DEMODULATOR_0:
		/* power off ADC 1 */
		reg = FUNC7(state, STV090x_TSTTNR1);
		FUNC1(reg, ADC1_PON_FIELD, 0);
		if (FUNC8(state, STV090x_TSTTNR1, reg) < 0)
			goto err_unlock;
		/* power off DiSEqC 1 */
		reg = FUNC7(state, STV090x_TSTTNR2);
		FUNC1(reg, DISEQC1_PON_FIELD, 0);
		if (FUNC8(state, STV090x_TSTTNR2, reg) < 0)
			goto err_unlock;

		/* check whether path 2 is already sleeping, that is when
		   ADC2 is off */
		reg = FUNC7(state, STV090x_TSTTNR3);
		if (FUNC0(reg, ADC2_PON_FIELD) == 0)
			full_standby = 1;

		/* stop clocks */
		reg = FUNC7(state, STV090x_STOPCLK1);
		/* packet delineator 1 clock */
		FUNC1(reg, STOP_CLKPKDT1_FIELD, 1);
		/* ADC 1 clock */
		FUNC1(reg, STOP_CLKADCI1_FIELD, 1);
		/* FEC clock is shared between the two paths, only stop it
		   when full standby is possible */
		if (full_standby)
			FUNC1(reg, STOP_CLKFEC_FIELD, 1);
		if (FUNC8(state, STV090x_STOPCLK1, reg) < 0)
			goto err_unlock;
		reg = FUNC7(state, STV090x_STOPCLK2);
		/* sampling 1 clock */
		FUNC1(reg, STOP_CLKSAMP1_FIELD, 1);
		/* viterbi 1 clock */
		FUNC1(reg, STOP_CLKVIT1_FIELD, 1);
		/* TS clock is shared between the two paths, only stop it
		   when full standby is possible */
		if (full_standby)
			FUNC1(reg, STOP_CLKTS_FIELD, 1);
		if (FUNC8(state, STV090x_STOPCLK2, reg) < 0)
			goto err_unlock;
		break;

	case STV090x_DEMODULATOR_1:
		/* power off ADC 2 */
		reg = FUNC7(state, STV090x_TSTTNR3);
		FUNC1(reg, ADC2_PON_FIELD, 0);
		if (FUNC8(state, STV090x_TSTTNR3, reg) < 0)
			goto err_unlock;
		/* power off DiSEqC 2 */
		reg = FUNC7(state, STV090x_TSTTNR4);
		FUNC1(reg, DISEQC2_PON_FIELD, 0);
		if (FUNC8(state, STV090x_TSTTNR4, reg) < 0)
			goto err_unlock;

		/* check whether path 1 is already sleeping, that is when
		   ADC1 is off */
		reg = FUNC7(state, STV090x_TSTTNR1);
		if (FUNC0(reg, ADC1_PON_FIELD) == 0)
			full_standby = 1;

		/* stop clocks */
		reg = FUNC7(state, STV090x_STOPCLK1);
		/* packet delineator 2 clock */
		FUNC1(reg, STOP_CLKPKDT2_FIELD, 1);
		/* ADC 2 clock */
		FUNC1(reg, STOP_CLKADCI2_FIELD, 1);
		/* FEC clock is shared between the two paths, only stop it
		   when full standby is possible */
		if (full_standby)
			FUNC1(reg, STOP_CLKFEC_FIELD, 1);
		if (FUNC8(state, STV090x_STOPCLK1, reg) < 0)
			goto err_unlock;
		reg = FUNC7(state, STV090x_STOPCLK2);
		/* sampling 2 clock */
		FUNC1(reg, STOP_CLKSAMP2_FIELD, 1);
		/* viterbi 2 clock */
		FUNC1(reg, STOP_CLKVIT2_FIELD, 1);
		/* TS clock is shared between the two paths, only stop it
		   when full standby is possible */
		if (full_standby)
			FUNC1(reg, STOP_CLKTS_FIELD, 1);
		if (FUNC8(state, STV090x_STOPCLK2, reg) < 0)
			goto err_unlock;
		break;

	default:
		FUNC2(FE_ERROR, 1, "Wrong demodulator!");
		break;
	}

	if (full_standby) {
		/* general power off */
		reg = FUNC7(state, STV090x_SYNTCTRL);
		FUNC1(reg, STANDBY_FIELD, 0x01);
		if (FUNC8(state, STV090x_SYNTCTRL, reg) < 0)
			goto err_unlock;
	}

	FUNC4(&state->internal->demod_lock);
	return 0;

err_gateoff:
	FUNC6(state, 0);
	goto err;
err_unlock:
	FUNC4(&state->internal->demod_lock);
err:
	FUNC2(FE_ERROR, 1, "I/O error");
	return -1;
}