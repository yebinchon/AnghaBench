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
 int /*<<< orphan*/  AGC2I0 ; 
 int /*<<< orphan*/  AGC2I1 ; 
 int /*<<< orphan*/  AGC2REF ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  CFR_AUTOSCAN_FIELD ; 
 int /*<<< orphan*/  DMDCFGMD ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  DMDTOM ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  SCAN_ENABLE_FIELD ; 
 int /*<<< orphan*/  SFRLOW0 ; 
 int /*<<< orphan*/  SFRLOW1 ; 
 int /*<<< orphan*/  SFRUP0 ; 
 int /*<<< orphan*/  SFRUP1 ; 
 int FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct stv090x_state*,int) ; 

__attribute__((used)) static int FUNC6(struct stv090x_state *state)
{
	u32 agc2_min = 0xffff, agc2 = 0, freq_init, freq_step, reg;
	s32 i, j, steps, dir;

	if (FUNC2(state, AGC2REF, 0x38) < 0)
		goto err;
	reg = FUNC0(state, DMDCFGMD);
	FUNC1(reg, SCAN_ENABLE_FIELD, 0);
	FUNC1(reg, CFR_AUTOSCAN_FIELD, 0);
	if (FUNC2(state, DMDCFGMD, reg) < 0)
		goto err;

	if (FUNC2(state, SFRUP1, 0x83) < 0) /* SR = 65 Msps Max */
		goto err;
	if (FUNC2(state, SFRUP0, 0xc0) < 0)
		goto err;
	if (FUNC2(state, SFRLOW1, 0x82) < 0) /* SR= 400 ksps Min */
		goto err;
	if (FUNC2(state, SFRLOW0, 0xa0) < 0)
		goto err;
	if (FUNC2(state, DMDTOM, 0x00) < 0) /* stop acq @ coarse carrier state */
		goto err;
	if (FUNC5(state, 1000000) < 0)
		goto err;

	steps  = state->search_range / 1000000;
	if (steps <= 0)
		steps = 1;

	dir = 1;
	freq_step = (1000000 * 256) / (state->internal->mclk / 256);
	freq_init = 0;

	for (i = 0; i < steps; i++) {
		if (dir > 0)
			freq_init = freq_init + (freq_step * i);
		else
			freq_init = freq_init - (freq_step * i);

		dir *= -1;

		if (FUNC2(state, DMDISTATE, 0x5c) < 0) /* Demod RESET */
			goto err;
		if (FUNC2(state, CFRINIT1, (freq_init >> 8) & 0xff) < 0)
			goto err;
		if (FUNC2(state, CFRINIT0, freq_init & 0xff) < 0)
			goto err;
		if (FUNC2(state, DMDISTATE, 0x58) < 0) /* Demod RESET */
			goto err;
		FUNC4(10);

		agc2 = 0;
		for (j = 0; j < 10; j++) {
			agc2 += (FUNC0(state, AGC2I1) << 8) |
				FUNC0(state, AGC2I0);
		}
		agc2 /= 10;
		if (agc2 < agc2_min)
			agc2_min = agc2;
	}

	return agc2_min;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}