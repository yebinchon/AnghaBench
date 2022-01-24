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
typedef  int u16 ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* agc_control ) (int /*<<< orphan*/ *,int) ;} ;
struct dib7000m_state {int agc_state; int /*<<< orphan*/  demod; TYPE_2__ cfg; TYPE_1__* current_agc; } ;
struct TYPE_3__ {int wbd_alpha; int /*<<< orphan*/  perform_agc_softsplit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DIB7000M_POWER_INTERF_ANALOG_AGC ; 
 int /*<<< orphan*/  DIBX000_ADC_ON ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000m_state*) ; 
 int FUNC2 (struct dib7000m_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000m_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dib7000m_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct dib7000m_state*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(struct dvb_frontend *demod)
{
	struct dtv_frontend_properties *ch = &demod->dtv_property_cache;
	struct dib7000m_state *state = demod->demodulator_priv;
	u16 cfg_72 = FUNC2(state, 72);
	int ret = -1;
	u8 *agc_state = &state->agc_state;
	u8 agc_split;

	switch (state->agc_state) {
		case 0:
			// set power-up level: interf+analog+AGC
			FUNC6(state, DIB7000M_POWER_INTERF_ANALOG_AGC);
			FUNC4(state, DIBX000_ADC_ON);

			if (FUNC5(state, FUNC0(ch->frequency/1000)) != 0)
				return -1;

			ret = 7; /* ADC power up */
			(*agc_state)++;
			break;

		case 1:
			/* AGC initialization */
			if (state->cfg.agc_control)
				state->cfg.agc_control(&state->demod, 1);

			FUNC8(state, 75, 32768);
			if (!state->current_agc->perform_agc_softsplit) {
				/* we are using the wbd - so slow AGC startup */
				FUNC8(state, 103, 1 << 8); /* force 0 split on WBD and restart AGC */
				(*agc_state)++;
				ret = 5;
			} else {
				/* default AGC startup */
				(*agc_state) = 4;
				/* wait AGC rough lock time */
				ret = 7;
			}

			FUNC3(state);
			break;

		case 2: /* fast split search path after 5sec */
			FUNC8(state,  72, cfg_72 | (1 << 4)); /* freeze AGC loop */
			FUNC8(state, 103, 2 << 9);            /* fast split search 0.25kHz */
			(*agc_state)++;
			ret = 14;
			break;

	case 3: /* split search ended */
			agc_split = (u8)FUNC2(state, 392); /* store the split value for the next time */
			FUNC8(state, 75, FUNC2(state, 390)); /* set AGC gain start value */

			FUNC8(state, 72,  cfg_72 & ~(1 << 4));   /* std AGC loop */
			FUNC8(state, 103, (state->current_agc->wbd_alpha << 9) | agc_split); /* standard split search */

			FUNC3(state);

			FUNC9("SPLIT %p: %hd\n", demod, agc_split);

			(*agc_state)++;
			ret = 5;
			break;

		case 4: /* LNA startup */
			/* wait AGC accurate lock time */
			ret = 7;

			if (FUNC7(state))
				// wait only AGC rough lock time
				ret = 5;
			else
				(*agc_state)++;
			break;

		case 5:
			FUNC1(state);

			if (state->cfg.agc_control)
				state->cfg.agc_control(&state->demod, 0);

			(*agc_state)++;
			break;

		default:
			break;
	}
	return ret;
}