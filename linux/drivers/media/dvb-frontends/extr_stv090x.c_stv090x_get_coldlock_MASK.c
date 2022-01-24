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
typedef  scalar_t__ u32 ;
struct dvb_frontend {int dummy; } ;
struct stv090x_state {int srate; int search_range; int frequency; TYPE_1__* config; scalar_t__ tuner_bw; int /*<<< orphan*/  rolloff; struct dvb_frontend frontend; } ;
typedef  int s32 ;
struct TYPE_2__ {scalar_t__ (* tuner_set_frequency ) (struct dvb_frontend*,int) ;scalar_t__ (* tuner_set_bandwidth ) (struct dvb_frontend*,scalar_t__) ;scalar_t__ (* tuner_get_status ) (struct dvb_frontend*,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 scalar_t__ FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct dvb_frontend*,int) ; 
 scalar_t__ FUNC4 (struct dvb_frontend*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct dvb_frontend*,scalar_t__*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct stv090x_state*) ; 
 int FUNC8 (struct stv090x_state*,int) ; 
 scalar_t__ FUNC9 (struct stv090x_state*,int) ; 

__attribute__((used)) static int FUNC10(struct stv090x_state *state, s32 timeout_dmd)
{
	struct dvb_frontend *fe = &state->frontend;

	u32 reg;
	s32 car_step, steps, cur_step, dir, freq, timeout_lock;
	int lock;

	if (state->srate >= 10000000)
		timeout_lock = timeout_dmd / 3;
	else
		timeout_lock = timeout_dmd / 2;

	lock = FUNC8(state, timeout_lock); /* cold start wait */
	if (lock)
		return lock;

	if (state->srate >= 10000000) {
		if (FUNC7(state)) {
			if (FUNC0(state, DMDISTATE, 0x1f) < 0)
				goto err;
			if (FUNC0(state, DMDISTATE, 0x15) < 0)
				goto err;
			return FUNC8(state, timeout_dmd);
		}
		return 0;
	}

	if (state->srate <= 4000000)
		car_step = 1000;
	else if (state->srate <= 7000000)
		car_step = 2000;
	else if (state->srate <= 10000000)
		car_step = 3000;
	else
		car_step = 5000;

	steps  = (state->search_range / 1000) / car_step;
	steps /= 2;
	steps  = 2 * (steps + 1);
	if (steps < 0)
		steps = 2;
	else if (steps > 12)
		steps = 12;

	cur_step = 1;
	dir = 1;

	freq = state->frequency;
	state->tuner_bw = FUNC6(state->srate, state->rolloff) + state->srate;
	while ((cur_step <= steps) && (!lock)) {
		if (dir > 0)
			freq += cur_step * car_step;
		else
			freq -= cur_step * car_step;

		/* Setup tuner */
		if (FUNC9(state, 1) < 0)
			goto err;

		if (state->config->tuner_set_frequency) {
			if (state->config->tuner_set_frequency(fe, freq) < 0)
				goto err_gateoff;
		}

		if (state->config->tuner_set_bandwidth) {
			if (state->config->tuner_set_bandwidth(fe, state->tuner_bw) < 0)
				goto err_gateoff;
		}

		if (FUNC9(state, 0) < 0)
			goto err;

		FUNC2(50);

		if (FUNC9(state, 1) < 0)
			goto err;

		if (state->config->tuner_get_status) {
			if (state->config->tuner_get_status(fe, &reg) < 0)
				goto err_gateoff;
			if (reg)
				FUNC1(FE_DEBUG, 1, "Tuner phase locked");
			else
				FUNC1(FE_DEBUG, 1, "Tuner unlocked");
		}

		if (FUNC9(state, 0) < 0)
			goto err;

		FUNC0(state, DMDISTATE, 0x1c);
		if (FUNC0(state, CFRINIT1, 0x00) < 0)
			goto err;
		if (FUNC0(state, CFRINIT0, 0x00) < 0)
			goto err;
		if (FUNC0(state, DMDISTATE, 0x1f) < 0)
			goto err;
		if (FUNC0(state, DMDISTATE, 0x15) < 0)
			goto err;
		lock = FUNC8(state, (timeout_dmd / 3));

		dir *= -1;
		cur_step++;
	}

	return lock;

err_gateoff:
	FUNC9(state, 0);
err:
	FUNC1(FE_ERROR, 1, "I/O error");
	return -1;
}