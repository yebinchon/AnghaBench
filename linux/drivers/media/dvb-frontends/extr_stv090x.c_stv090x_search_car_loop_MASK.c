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
typedef  int u32 ;
struct stv090x_state {int search_range; TYPE_1__* internal; } ;
typedef  int s32 ;
struct TYPE_2__ {int mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALGOSWRST_FIELD ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  PDELCTRL1 ; 
 int FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC4 (struct stv090x_state*) ; 
 int FUNC5 (struct stv090x_state*,int) ; 

__attribute__((used)) static int FUNC6(struct stv090x_state *state, s32 inc, s32 timeout, int zigzag, s32 steps_max)
{
	int no_signal, lock = 0;
	s32 cpt_step = 0, offst_freq, car_max;
	u32 reg;

	car_max  = state->search_range / 1000;
	car_max += (car_max / 10);
	car_max  = (65536 * car_max / 2);
	car_max /= (state->internal->mclk / 1000);
	if (car_max > 0x4000)
		car_max = 0x4000;

	if (zigzag)
		offst_freq = 0;
	else
		offst_freq = -car_max + inc;

	do {
		if (FUNC2(state, DMDISTATE, 0x1c) < 0)
			goto err;
		if (FUNC2(state, CFRINIT1, ((offst_freq / 256) & 0xff)) < 0)
			goto err;
		if (FUNC2(state, CFRINIT0, offst_freq & 0xff) < 0)
			goto err;
		if (FUNC2(state, DMDISTATE, 0x18) < 0)
			goto err;

		reg = FUNC0(state, PDELCTRL1);
		FUNC1(reg, ALGOSWRST_FIELD, 0x1); /* stop DVB-S2 packet delin */
		if (FUNC2(state, PDELCTRL1, reg) < 0)
			goto err;

		if (zigzag) {
			if (offst_freq >= 0)
				offst_freq = -offst_freq - 2 * inc;
			else
				offst_freq = -offst_freq;
		} else {
			offst_freq += 2 * inc;
		}

		cpt_step++;

		lock = FUNC5(state, timeout);
		no_signal = FUNC4(state);

	} while ((!lock) &&
		 (!no_signal) &&
		  ((offst_freq - inc) < car_max) &&
		  ((offst_freq + inc) > -car_max) &&
		  (cpt_step < steps_max));

	reg = FUNC0(state, PDELCTRL1);
	FUNC1(reg, ALGOSWRST_FIELD, 0);
	if (FUNC2(state, PDELCTRL1, reg) < 0)
			goto err;

	return lock;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}