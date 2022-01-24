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
struct dvb_frontend {int dummy; } ;
struct stv090x_state {int srate; int search_range; int frequency; TYPE_1__* internal; TYPE_2__* config; int /*<<< orphan*/  tuner_bw; struct dvb_frontend frontend; } ;
typedef  int s32 ;
struct TYPE_4__ {scalar_t__ (* tuner_set_frequency ) (struct dvb_frontend*,int) ;scalar_t__ (* tuner_set_bandwidth ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;scalar_t__ (* tuner_get_status ) (struct dvb_frontend*,int*) ;} ;
struct TYPE_3__ {int dev_ver; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC2I0 ; 
 int /*<<< orphan*/  AGC2I1 ; 
 int /*<<< orphan*/  AGC2REF ; 
 int /*<<< orphan*/  CARFREQ ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  CFR_AUTOSCAN_FIELD ; 
 int /*<<< orphan*/  DMDCFGMD ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  DMDTOM ; 
 int /*<<< orphan*/  DSTATUS ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  I2C_DEMOD_MODE_FIELD ; 
 int /*<<< orphan*/  SCAN_ENABLE_FIELD ; 
 int /*<<< orphan*/  SFRINIT0 ; 
 int /*<<< orphan*/  SFRINIT1 ; 
 int /*<<< orphan*/  SFRLOW0 ; 
 int /*<<< orphan*/  SFRLOW1 ; 
 int /*<<< orphan*/  SFRSTEP ; 
 int /*<<< orphan*/  SFRUP0 ; 
 int /*<<< orphan*/  SFRUP1 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TMGCFG ; 
 int /*<<< orphan*/  TMGCFG2 ; 
 int /*<<< orphan*/  TMGLOCK_QUALITY_FIELD ; 
 int /*<<< orphan*/  TMGTHFALL ; 
 int /*<<< orphan*/  TMGTHRISE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct dvb_frontend*,int) ; 
 scalar_t__ FUNC7 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct dvb_frontend*,int*) ; 
 int FUNC9 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct stv090x_state*,int) ; 

__attribute__((used)) static u32 FUNC11(struct stv090x_state *state)
{
	struct dvb_frontend *fe = &state->frontend;

	int tmg_lock = 0, i;
	s32 tmg_cpt = 0, dir = 1, steps, cur_step = 0, freq;
	u32 srate_coarse = 0, agc2 = 0, car_step = 1200, reg;
	u32 agc2th;

	if (state->internal->dev_ver >= 0x30)
		agc2th = 0x2e00;
	else
		agc2th = 0x1f00;

	reg = FUNC1(state, DMDISTATE);
	FUNC2(reg, I2C_DEMOD_MODE_FIELD, 0x1f); /* Demod RESET */
	if (FUNC3(state, DMDISTATE, reg) < 0)
		goto err;
	if (FUNC3(state, TMGCFG, 0x12) < 0)
		goto err;
	if (FUNC3(state, TMGCFG2, 0xc0) < 0)
		goto err;
	if (FUNC3(state, TMGTHRISE, 0xf0) < 0)
		goto err;
	if (FUNC3(state, TMGTHFALL, 0xe0) < 0)
		goto err;
	reg = FUNC1(state, DMDCFGMD);
	FUNC2(reg, SCAN_ENABLE_FIELD, 1);
	FUNC2(reg, CFR_AUTOSCAN_FIELD, 0);
	if (FUNC3(state, DMDCFGMD, reg) < 0)
		goto err;

	if (FUNC3(state, SFRUP1, 0x83) < 0)
		goto err;
	if (FUNC3(state, SFRUP0, 0xc0) < 0)
		goto err;
	if (FUNC3(state, SFRLOW1, 0x82) < 0)
		goto err;
	if (FUNC3(state, SFRLOW0, 0xa0) < 0)
		goto err;
	if (FUNC3(state, DMDTOM, 0x00) < 0)
		goto err;
	if (FUNC3(state, AGC2REF, 0x50) < 0)
		goto err;

	if (state->internal->dev_ver >= 0x30) {
		if (FUNC3(state, CARFREQ, 0x99) < 0)
			goto err;
		if (FUNC3(state, SFRSTEP, 0x98) < 0)
			goto err;

	} else if (state->internal->dev_ver >= 0x20) {
		if (FUNC3(state, CARFREQ, 0x6a) < 0)
			goto err;
		if (FUNC3(state, SFRSTEP, 0x95) < 0)
			goto err;
	}

	if (state->srate <= 2000000)
		car_step = 1000;
	else if (state->srate <= 5000000)
		car_step = 2000;
	else if (state->srate <= 12000000)
		car_step = 3000;
	else
		car_step = 5000;

	steps  = -1 + ((state->search_range / 1000) / car_step);
	steps /= 2;
	steps  = (2 * steps) + 1;
	if (steps < 0)
		steps = 1;
	else if (steps > 10) {
		steps = 11;
		car_step = (state->search_range / 1000) / 10;
	}
	cur_step = 0;
	dir = 1;
	freq = state->frequency;

	while ((!tmg_lock) && (cur_step < steps)) {
		if (FUNC3(state, DMDISTATE, 0x5f) < 0) /* Demod RESET */
			goto err;
		if (FUNC3(state, CFRINIT1, 0x00) < 0)
			goto err;
		if (FUNC3(state, CFRINIT0, 0x00) < 0)
			goto err;
		if (FUNC3(state, SFRINIT1, 0x00) < 0)
			goto err;
		if (FUNC3(state, SFRINIT0, 0x00) < 0)
			goto err;
		/* trigger acquisition */
		if (FUNC3(state, DMDISTATE, 0x40) < 0)
			goto err;
		FUNC5(50);
		for (i = 0; i < 10; i++) {
			reg = FUNC1(state, DSTATUS);
			if (FUNC0(reg, TMGLOCK_QUALITY_FIELD) >= 2)
				tmg_cpt++;
			agc2 += (FUNC1(state, AGC2I1) << 8) |
				FUNC1(state, AGC2I0);
		}
		agc2 /= 10;
		srate_coarse = FUNC9(state, state->internal->mclk);
		cur_step++;
		dir *= -1;
		if ((tmg_cpt >= 5) && (agc2 < agc2th) &&
		    (srate_coarse < 50000000) && (srate_coarse > 850000))
			tmg_lock = 1;
		else if (cur_step < steps) {
			if (dir > 0)
				freq += cur_step * car_step;
			else
				freq -= cur_step * car_step;

			/* Setup tuner */
			if (FUNC10(state, 1) < 0)
				goto err;

			if (state->config->tuner_set_frequency) {
				if (state->config->tuner_set_frequency(fe, freq) < 0)
					goto err_gateoff;
			}

			if (state->config->tuner_set_bandwidth) {
				if (state->config->tuner_set_bandwidth(fe, state->tuner_bw) < 0)
					goto err_gateoff;
			}

			if (FUNC10(state, 0) < 0)
				goto err;

			FUNC5(50);

			if (FUNC10(state, 1) < 0)
				goto err;

			if (state->config->tuner_get_status) {
				if (state->config->tuner_get_status(fe, &reg) < 0)
					goto err_gateoff;
			}

			if (reg)
				FUNC4(FE_DEBUG, 1, "Tuner phase locked");
			else
				FUNC4(FE_DEBUG, 1, "Tuner unlocked");

			if (FUNC10(state, 0) < 0)
				goto err;

		}
	}
	if (!tmg_lock)
		srate_coarse = 0;
	else
		srate_coarse = FUNC9(state, state->internal->mclk);

	return srate_coarse;

err_gateoff:
	FUNC10(state, 0);
err:
	FUNC4(FE_ERROR, 1, "I/O error");
	return -1;
}