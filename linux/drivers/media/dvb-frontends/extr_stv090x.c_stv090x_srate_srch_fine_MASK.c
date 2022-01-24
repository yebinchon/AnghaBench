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
struct stv090x_state {int srate; TYPE_1__* internal; } ;
struct TYPE_2__ {int mclk; int dev_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC2REF ; 
 int /*<<< orphan*/  CARFREQ ; 
 int /*<<< orphan*/  CFR1 ; 
 int /*<<< orphan*/  CFR2 ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  CFR_AUTOSCAN_FIELD ; 
 int /*<<< orphan*/  DMDCFGMD ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  DMDTOM ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  SFRINIT0 ; 
 int /*<<< orphan*/  SFRINIT1 ; 
 int /*<<< orphan*/  SFRLOW0 ; 
 int /*<<< orphan*/  SFRLOW1 ; 
 int /*<<< orphan*/  SFRUP0 ; 
 int /*<<< orphan*/  SFRUP1 ; 
 int FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TMGCFG ; 
 int /*<<< orphan*/  TMGCFG2 ; 
 int /*<<< orphan*/  TMGTHFALL ; 
 int /*<<< orphan*/  TMGTHRISE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC4 (struct stv090x_state*,int) ; 

__attribute__((used)) static u32 FUNC5(struct stv090x_state *state)
{
	u32 srate_coarse, freq_coarse, sym, reg;

	srate_coarse = FUNC4(state, state->internal->mclk);
	freq_coarse  = FUNC0(state, CFR2) << 8;
	freq_coarse |= FUNC0(state, CFR1);
	sym = 13 * (srate_coarse / 10); /* SFRUP = SFR + 30% */

	if (sym < state->srate)
		srate_coarse = 0;
	else {
		if (FUNC2(state, DMDISTATE, 0x1f) < 0) /* Demod RESET */
			goto err;
		if (FUNC2(state, TMGCFG2, 0xc1) < 0)
			goto err;
		if (FUNC2(state, TMGTHRISE, 0x20) < 0)
			goto err;
		if (FUNC2(state, TMGTHFALL, 0x00) < 0)
			goto err;
		if (FUNC2(state, TMGCFG, 0xd2) < 0)
			goto err;
		reg = FUNC0(state, DMDCFGMD);
		FUNC1(reg, CFR_AUTOSCAN_FIELD, 0x00);
		if (FUNC2(state, DMDCFGMD, reg) < 0)
			goto err;

		if (FUNC2(state, AGC2REF, 0x38) < 0)
			goto err;

		if (state->internal->dev_ver >= 0x30) {
			if (FUNC2(state, CARFREQ, 0x79) < 0)
				goto err;
		} else if (state->internal->dev_ver >= 0x20) {
			if (FUNC2(state, CARFREQ, 0x49) < 0)
				goto err;
		}

		if (srate_coarse > 3000000) {
			sym  = 13 * (srate_coarse / 10); /* SFRUP = SFR + 30% */
			sym  = (sym / 1000) * 65536;
			sym /= (state->internal->mclk / 1000);
			if (FUNC2(state, SFRUP1, (sym >> 8) & 0x7f) < 0)
				goto err;
			if (FUNC2(state, SFRUP0, sym & 0xff) < 0)
				goto err;
			sym  = 10 * (srate_coarse / 13); /* SFRLOW = SFR - 30% */
			sym  = (sym / 1000) * 65536;
			sym /= (state->internal->mclk / 1000);
			if (FUNC2(state, SFRLOW1, (sym >> 8) & 0x7f) < 0)
				goto err;
			if (FUNC2(state, SFRLOW0, sym & 0xff) < 0)
				goto err;
			sym  = (srate_coarse / 1000) * 65536;
			sym /= (state->internal->mclk / 1000);
			if (FUNC2(state, SFRINIT1, (sym >> 8) & 0xff) < 0)
				goto err;
			if (FUNC2(state, SFRINIT0, sym & 0xff) < 0)
				goto err;
		} else {
			sym  = 13 * (srate_coarse / 10); /* SFRUP = SFR + 30% */
			sym  = (sym / 100) * 65536;
			sym /= (state->internal->mclk / 100);
			if (FUNC2(state, SFRUP1, (sym >> 8) & 0x7f) < 0)
				goto err;
			if (FUNC2(state, SFRUP0, sym & 0xff) < 0)
				goto err;
			sym  = 10 * (srate_coarse / 14); /* SFRLOW = SFR - 30% */
			sym  = (sym / 100) * 65536;
			sym /= (state->internal->mclk / 100);
			if (FUNC2(state, SFRLOW1, (sym >> 8) & 0x7f) < 0)
				goto err;
			if (FUNC2(state, SFRLOW0, sym & 0xff) < 0)
				goto err;
			sym  = (srate_coarse / 100) * 65536;
			sym /= (state->internal->mclk / 100);
			if (FUNC2(state, SFRINIT1, (sym >> 8) & 0xff) < 0)
				goto err;
			if (FUNC2(state, SFRINIT0, sym & 0xff) < 0)
				goto err;
		}
		if (FUNC2(state, DMDTOM, 0x20) < 0)
			goto err;
		if (FUNC2(state, CFRINIT1, (freq_coarse >> 8) & 0xff) < 0)
			goto err;
		if (FUNC2(state, CFRINIT0, freq_coarse & 0xff) < 0)
			goto err;
		if (FUNC2(state, DMDISTATE, 0x15) < 0) /* trigger acquisition */
			goto err;
	}

	return srate_coarse;

err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}