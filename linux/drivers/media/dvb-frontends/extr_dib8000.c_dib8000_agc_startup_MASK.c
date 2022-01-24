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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int frequency; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct dib8000_state* demodulator_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* agc_control ) (struct dvb_frontend*,int) ;} ;
struct dib8000_state {int tune_state; int revision; TYPE_2__ cfg; int /*<<< orphan*/  status; } ;
typedef  enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
#define  CT_AGC_START 131 
#define  CT_AGC_STEP_0 130 
#define  CT_AGC_STEP_1 129 
#define  CT_AGC_STEP_2 128 
 int CT_AGC_STOP ; 
 int /*<<< orphan*/  DIB8000_POWER_ALL ; 
 int /*<<< orphan*/  DIBX000_ADC_ON ; 
 int /*<<< orphan*/  FE_STATUS_TUNE_FAILED ; 
 int FUNC1 (struct dib8000_state*) ; 
 int FUNC2 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib8000_state*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC11(struct dvb_frontend *fe)
{
	struct dib8000_state *state = fe->demodulator_priv;
	enum frontend_tune_state *tune_state = &state->tune_state;
	int ret = 0;
	u16 reg;
	u32 upd_demod_gain_period = 0x8000;

	switch (*tune_state) {
	case CT_AGC_START:
		// set power-up level: interf+analog+AGC

		if (state->revision != 0x8090)
			FUNC4(state, DIBX000_ADC_ON);
		else {
			FUNC6(state, DIB8000_POWER_ALL);

			reg = FUNC2(state, 1947)&0xff00;
			FUNC8(state, 1946,
					upd_demod_gain_period & 0xFFFF);
			/* bit 14 = enDemodGain */
			FUNC8(state, 1947, reg | (1<<14) |
					((upd_demod_gain_period >> 16) & 0xFF));

			/* enable adc i & q */
			reg = FUNC2(state, 1920);
			FUNC8(state, 1920, (reg | 0x3) &
					(~(1 << 7)));
		}

		if (FUNC5(state, (unsigned char)(FUNC0(fe->dtv_property_cache.frequency / 1000))) != 0) {
			*tune_state = CT_AGC_STOP;
			state->status = FE_STATUS_TUNE_FAILED;
			break;
		}

		ret = 70;
		*tune_state = CT_AGC_STEP_0;
		break;

	case CT_AGC_STEP_0:
		//AGC initialization
		if (state->cfg.agc_control)
			state->cfg.agc_control(fe, 1);

		FUNC3(state);

		// wait AGC rough lock time
		ret = 50;
		*tune_state = CT_AGC_STEP_1;
		break;

	case CT_AGC_STEP_1:
		// wait AGC accurate lock time
		ret = 70;

		if (FUNC7(state))
			// wait only AGC rough lock time
			ret = 50;
		else
			*tune_state = CT_AGC_STEP_2;
		break;

	case CT_AGC_STEP_2:
		FUNC1(state);

		if (state->cfg.agc_control)
			state->cfg.agc_control(fe, 0);

		*tune_state = CT_AGC_STOP;
		break;
	default:
		ret = FUNC1(state);
		break;
	}
	return ret;

}