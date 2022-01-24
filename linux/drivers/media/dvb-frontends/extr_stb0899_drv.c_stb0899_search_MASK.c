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
typedef  int u32 ;
struct stb0899_internal {int srate; int srch_range; int derot_percent; int lock; int /*<<< orphan*/  tuner_bw; int /*<<< orphan*/  freq; } ;
struct stb0899_params {int srate; int /*<<< orphan*/  freq; } ;
struct stb0899_state {int delsys; int /*<<< orphan*/  verbose; int /*<<< orphan*/  frontend; struct stb0899_config* config; struct stb0899_internal internal; struct stb0899_params params; } ;
struct stb0899_config {int /*<<< orphan*/  (* tuner_get_bandwidth ) (struct dvb_frontend*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* tuner_set_bandwidth ) (struct dvb_frontend*,int) ;int /*<<< orphan*/  hi_clk; int /*<<< orphan*/  lo_clk; int /*<<< orphan*/  (* tuner_set_rfsiggain ) (struct dvb_frontend*,int) ;} ;
struct dtv_frontend_properties {int symbol_rate; int delivery_system; int /*<<< orphan*/  frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct stb0899_state* demodulator_priv; } ;
typedef  enum dvbfe_search { ____Placeholder_dvbfe_search } dvbfe_search ;

/* Variables and functions */
 int DVBFE_ALGO_SEARCH_ERROR ; 
 int DVBFE_ALGO_SEARCH_FAILED ; 
 int DVBFE_ALGO_SEARCH_INVALID ; 
 int DVBFE_ALGO_SEARCH_SUCCESS ; 
 int /*<<< orphan*/  DVBS2_FEC_LOCK ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  RANGEOK ; 
 int /*<<< orphan*/  STB0899_AGCRFCFG ; 
#define  SYS_DSS 130 
#define  SYS_DVBS 129 
#define  SYS_DVBS2 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct stb0899_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dvb_frontend*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct dvb_frontend*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum dvbfe_search FUNC15(struct dvb_frontend *fe)
{
	struct stb0899_state *state = fe->demodulator_priv;
	struct stb0899_params *i_params = &state->params;
	struct stb0899_internal *internal = &state->internal;
	struct stb0899_config *config = state->config;
	struct dtv_frontend_properties *props = &fe->dtv_property_cache;

	u32 SearchRange, gain;

	i_params->freq	= props->frequency;
	i_params->srate = props->symbol_rate;
	state->delsys = props->delivery_system;
	FUNC1(state->verbose, FE_DEBUG, 1, "delivery system=%d", state->delsys);

	SearchRange = 10000000;
	FUNC1(state->verbose, FE_DEBUG, 1, "Frequency=%d, Srate=%d", i_params->freq, i_params->srate);
	/* checking Search Range is meaningless for a fixed 3 Mhz			*/
	if (FUNC0(i_params->srate, 1000000, 45000000)) {
		FUNC1(state->verbose, FE_DEBUG, 1, "Parameters IN RANGE");
		FUNC6(state);

		if (state->config->tuner_set_rfsiggain) {
			if (internal->srate > 15000000)
				gain =  8; /* 15Mb < srate < 45Mb, gain = 8dB	*/
			else if (internal->srate > 5000000)
				gain = 12; /*  5Mb < srate < 15Mb, gain = 12dB	*/
			else
				gain = 14; /*  1Mb < srate <  5Mb, gain = 14db	*/
			state->config->tuner_set_rfsiggain(fe, gain);
		}

		if (i_params->srate <= 5000000)
			FUNC8(state, config->lo_clk);
		else
			FUNC8(state, config->hi_clk);

		switch (state->delsys) {
		case SYS_DVBS:
		case SYS_DSS:
			FUNC1(state->verbose, FE_DEBUG, 1, "DVB-S delivery system");
			internal->freq	= i_params->freq;
			internal->srate	= i_params->srate;
			/*
			 * search = user search range +
			 *	    500Khz +
			 *	    2 * Tuner_step_size +
			 *	    10% of the symbol rate
			 */
			internal->srch_range	= SearchRange + 1500000 + (i_params->srate / 5);
			internal->derot_percent	= 30;

			/* What to do for tuners having no bandwidth setup ?	*/
			/* enable tuner I/O */
			FUNC5(&state->frontend, 1);

			if (state->config->tuner_set_bandwidth)
				state->config->tuner_set_bandwidth(fe, (13 * (FUNC2(state) + SearchRange)) / 10);
			if (state->config->tuner_get_bandwidth)
				state->config->tuner_get_bandwidth(fe, &internal->tuner_bw);

			/* disable tuner I/O */
			FUNC5(&state->frontend, 0);

			/* Set DVB-S1 AGC		*/
			FUNC9(state, STB0899_AGCRFCFG, 0x11);

			/* Run the search algorithm	*/
			FUNC1(state->verbose, FE_DEBUG, 1, "running DVB-S search algo ..");
			if (FUNC4(state)	== RANGEOK) {
				internal->lock		= 1;
				FUNC1(state->verbose, FE_DEBUG, 1,
					"-------------------------------------> DVB-S LOCK !");

//				stb0899_write_reg(state, STB0899_ERRCTRL1, 0x3d); /* Viterbi Errors	*/
//				internal->v_status = stb0899_read_reg(state, STB0899_VSTATUS);
//				internal->err_ctrl = stb0899_read_reg(state, STB0899_ERRCTRL1);
//				dprintk(state->verbose, FE_DEBUG, 1, "VSTATUS=0x%02x", internal->v_status);
//				dprintk(state->verbose, FE_DEBUG, 1, "ERR_CTRL=0x%02x", internal->err_ctrl);

				return DVBFE_ALGO_SEARCH_SUCCESS;
			} else {
				internal->lock		= 0;

				return DVBFE_ALGO_SEARCH_FAILED;
			}
			break;
		case SYS_DVBS2:
			internal->freq			= i_params->freq;
			internal->srate			= i_params->srate;
			internal->srch_range		= SearchRange;

			/* enable tuner I/O */
			FUNC5(&state->frontend, 1);

			if (state->config->tuner_set_bandwidth)
				state->config->tuner_set_bandwidth(fe, (FUNC2(state) + SearchRange));
			if (state->config->tuner_get_bandwidth)
				state->config->tuner_get_bandwidth(fe, &internal->tuner_bw);

			/* disable tuner I/O */
			FUNC5(&state->frontend, 0);

//			pParams->SpectralInv		= pSearch->IQ_Inversion;

			/* Set DVB-S2 AGC		*/
			FUNC9(state, STB0899_AGCRFCFG, 0x1c);

			/* Set IterScale =f(MCLK,SYMB)	*/
			FUNC7(state);

			/* Run the search algorithm	*/
			FUNC1(state->verbose, FE_DEBUG, 1, "running DVB-S2 search algo ..");
			if (FUNC3(state)	== DVBS2_FEC_LOCK) {
				internal->lock		= 1;
				FUNC1(state->verbose, FE_DEBUG, 1,
					"-------------------------------------> DVB-S2 LOCK !");

//				stb0899_write_reg(state, STB0899_ERRCTRL1, 0xb6); /* Packet Errors	*/
//				internal->v_status = stb0899_read_reg(state, STB0899_VSTATUS);
//				internal->err_ctrl = stb0899_read_reg(state, STB0899_ERRCTRL1);

				return DVBFE_ALGO_SEARCH_SUCCESS;
			} else {
				internal->lock		= 0;

				return DVBFE_ALGO_SEARCH_FAILED;
			}
			break;
		default:
			FUNC1(state->verbose, FE_ERROR, 1, "Unsupported delivery system");
			return DVBFE_ALGO_SEARCH_INVALID;
		}
	}

	return DVBFE_ALGO_SEARCH_ERROR;
}