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
typedef  void* u32 ;
struct dvb_frontend {int dummy; } ;
struct stv090x_state {scalar_t__ algo; int frequency; int modcod; int pilots; int frame_len; int rolloff; int inversion; int srate; int search_range; TYPE_2__* config; TYPE_1__* internal; int /*<<< orphan*/  delsys; struct dvb_frontend frontend; } ;
typedef  int s32 ;
typedef  enum stv090x_signal_state { ____Placeholder_stv090x_signal_state } stv090x_signal_state ;
struct TYPE_4__ {scalar_t__ (* tuner_get_frequency ) (struct dvb_frontend*,int*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMOD_MODCOD_FIELD ; 
 int /*<<< orphan*/  DEMOD_TYPE_FIELD ; 
 int /*<<< orphan*/  DMDMODCOD ; 
 int /*<<< orphan*/  FECM ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  IQINV_FIELD ; 
 int /*<<< orphan*/  ROLLOFF_STATUS_FIELD ; 
 int /*<<< orphan*/  SFRSTEP ; 
 scalar_t__ STV090x_BLIND_SEARCH ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int STV090x_OUTOFRANGE ; 
 int STV090x_RANGEOK ; 
 void* FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TMGOBS ; 
 int /*<<< orphan*/  TMGREG2 ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct dvb_frontend*,int*) ; 
 scalar_t__ FUNC7 (struct dvb_frontend*,int*) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stv090x_state*) ; 
 scalar_t__ FUNC11 (struct stv090x_state*) ; 
 scalar_t__ FUNC12 (struct stv090x_state*,int) ; 

__attribute__((used)) static enum stv090x_signal_state FUNC13(struct stv090x_state *state)
{
	struct dvb_frontend *fe = &state->frontend;

	u8 tmg;
	u32 reg;
	s32 i = 0, offst_freq;

	FUNC5(5);

	if (state->algo == STV090x_BLIND_SEARCH) {
		tmg = FUNC1(state, TMGREG2);
		FUNC2(state, SFRSTEP, 0x5c);
		while ((i <= 50) && (tmg != 0) && (tmg != 0xff)) {
			tmg = FUNC1(state, TMGREG2);
			FUNC5(5);
			i += 5;
		}
	}
	state->delsys = FUNC10(state);

	if (FUNC12(state, 1) < 0)
		goto err;

	if (state->config->tuner_get_frequency) {
		if (state->config->tuner_get_frequency(fe, &state->frequency) < 0)
			goto err_gateoff;
	}

	if (FUNC12(state, 0) < 0)
		goto err;

	offst_freq = FUNC9(state, state->internal->mclk) / 1000;
	state->frequency += offst_freq;

	if (FUNC11(state) < 0)
		goto err;

	reg = FUNC1(state, DMDMODCOD);
	state->modcod = FUNC0(reg, DEMOD_MODCOD_FIELD);
	state->pilots = FUNC0(reg, DEMOD_TYPE_FIELD) & 0x01;
	state->frame_len = FUNC0(reg, DEMOD_TYPE_FIELD) >> 1;
	reg = FUNC1(state, TMGOBS);
	state->rolloff = FUNC0(reg, ROLLOFF_STATUS_FIELD);
	reg = FUNC1(state, FECM);
	state->inversion = FUNC0(reg, IQINV_FIELD);

	if ((state->algo == STV090x_BLIND_SEARCH) || (state->srate < 10000000)) {

		if (FUNC12(state, 1) < 0)
			goto err;

		if (state->config->tuner_get_frequency) {
			if (state->config->tuner_get_frequency(fe, &state->frequency) < 0)
				goto err_gateoff;
		}

		if (FUNC12(state, 0) < 0)
			goto err;

		if (FUNC3(offst_freq) <= ((state->search_range / 2000) + 500))
			return STV090x_RANGEOK;
		else if (FUNC3(offst_freq) <= (FUNC8(state->srate, state->rolloff) / 2000))
			return STV090x_RANGEOK;
	} else {
		if (FUNC3(offst_freq) <= ((state->search_range / 2000) + 500))
			return STV090x_RANGEOK;
	}

	return STV090x_OUTOFRANGE;

err_gateoff:
	FUNC12(state, 0);
err:
	FUNC4(FE_ERROR, 1, "I/O error");
	return -1;
}