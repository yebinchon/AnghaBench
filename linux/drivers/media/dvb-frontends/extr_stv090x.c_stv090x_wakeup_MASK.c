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
struct stv090x_state {scalar_t__ device; int demod; TYPE_1__* internal; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  demod_lock; } ;

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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STV090x_STOPCLK1 ; 
 int /*<<< orphan*/  STV090x_STOPCLK2 ; 
 int /*<<< orphan*/  STV090x_SYNTCTRL ; 
 int /*<<< orphan*/  STV090x_TSTTNR1 ; 
 int /*<<< orphan*/  STV090x_TSTTNR2 ; 
 int /*<<< orphan*/  STV090x_TSTTNR3 ; 
 int /*<<< orphan*/  STV090x_TSTTNR4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg;

	FUNC1(FE_DEBUG, 1, "Wake %s(%d) from standby",
		state->device == STV0900 ? "STV0900" : "STV0903",
		state->demod);

	FUNC2(&state->internal->demod_lock);

	/* general power on */
	reg = FUNC4(state, STV090x_SYNTCTRL);
	FUNC0(reg, STANDBY_FIELD, 0x00);
	if (FUNC5(state, STV090x_SYNTCTRL, reg) < 0)
		goto err;

	switch (state->demod) {
	case STV090x_DEMODULATOR_0:
		/* power on ADC 1 */
		reg = FUNC4(state, STV090x_TSTTNR1);
		FUNC0(reg, ADC1_PON_FIELD, 1);
		if (FUNC5(state, STV090x_TSTTNR1, reg) < 0)
			goto err;
		/* power on DiSEqC 1 */
		reg = FUNC4(state, STV090x_TSTTNR2);
		FUNC0(reg, DISEQC1_PON_FIELD, 1);
		if (FUNC5(state, STV090x_TSTTNR2, reg) < 0)
			goto err;

		/* activate clocks */
		reg = FUNC4(state, STV090x_STOPCLK1);
		/* packet delineator 1 clock */
		FUNC0(reg, STOP_CLKPKDT1_FIELD, 0);
		/* ADC 1 clock */
		FUNC0(reg, STOP_CLKADCI1_FIELD, 0);
		/* FEC clock */
		FUNC0(reg, STOP_CLKFEC_FIELD, 0);
		if (FUNC5(state, STV090x_STOPCLK1, reg) < 0)
			goto err;
		reg = FUNC4(state, STV090x_STOPCLK2);
		/* sampling 1 clock */
		FUNC0(reg, STOP_CLKSAMP1_FIELD, 0);
		/* viterbi 1 clock */
		FUNC0(reg, STOP_CLKVIT1_FIELD, 0);
		/* TS clock */
		FUNC0(reg, STOP_CLKTS_FIELD, 0);
		if (FUNC5(state, STV090x_STOPCLK2, reg) < 0)
			goto err;
		break;

	case STV090x_DEMODULATOR_1:
		/* power on ADC 2 */
		reg = FUNC4(state, STV090x_TSTTNR3);
		FUNC0(reg, ADC2_PON_FIELD, 1);
		if (FUNC5(state, STV090x_TSTTNR3, reg) < 0)
			goto err;
		/* power on DiSEqC 2 */
		reg = FUNC4(state, STV090x_TSTTNR4);
		FUNC0(reg, DISEQC2_PON_FIELD, 1);
		if (FUNC5(state, STV090x_TSTTNR4, reg) < 0)
			goto err;

		/* activate clocks */
		reg = FUNC4(state, STV090x_STOPCLK1);
		/* packet delineator 2 clock */
		FUNC0(reg, STOP_CLKPKDT2_FIELD, 0);
		/* ADC 2 clock */
		FUNC0(reg, STOP_CLKADCI2_FIELD, 0);
		/* FEC clock */
		FUNC0(reg, STOP_CLKFEC_FIELD, 0);
		if (FUNC5(state, STV090x_STOPCLK1, reg) < 0)
			goto err;
		reg = FUNC4(state, STV090x_STOPCLK2);
		/* sampling 2 clock */
		FUNC0(reg, STOP_CLKSAMP2_FIELD, 0);
		/* viterbi 2 clock */
		FUNC0(reg, STOP_CLKVIT2_FIELD, 0);
		/* TS clock */
		FUNC0(reg, STOP_CLKTS_FIELD, 0);
		if (FUNC5(state, STV090x_STOPCLK2, reg) < 0)
			goto err;
		break;

	default:
		FUNC1(FE_ERROR, 1, "Wrong demodulator!");
		break;
	}

	FUNC3(&state->internal->demod_lock);
	return 0;
err:
	FUNC3(&state->internal->demod_lock);
	FUNC1(FE_ERROR, 1, "I/O error");
	return -1;
}