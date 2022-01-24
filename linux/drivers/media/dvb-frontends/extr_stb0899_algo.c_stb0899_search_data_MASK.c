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
typedef  int /*<<< orphan*/  u8 ;
struct stb0899_params {long srate; } ;
struct stb0899_internal {long mclk; long sub_range; short derot_freq; scalar_t__ status; int direction; short inversion; } ;
struct stb0899_state {int /*<<< orphan*/  verbose; struct stb0899_params params; struct stb0899_internal internal; } ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;

/* Variables and functions */
 scalar_t__ CARRIEROK ; 
 int /*<<< orphan*/  CFD_ON ; 
 int /*<<< orphan*/  CFRL ; 
 int /*<<< orphan*/  CFRM ; 
 scalar_t__ DATAOK ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 short IQ_SWAP_OFF ; 
 short IQ_SWAP_ON ; 
 int FUNC0 (short) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (short) ; 
 int /*<<< orphan*/  STB0899_CFD ; 
 int /*<<< orphan*/  STB0899_CFRM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_IQSWAP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYM ; 
 short FUNC5 (short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct stb0899_state*) ; 
 scalar_t__ FUNC8 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static enum stb0899_status FUNC13(struct stb0899_state *state)
{
	short int derot_freq, derot_step, derot_limit, next_loop = 3;
	u8 cfr[2];
	u8 reg;
	int index = 1;

	struct stb0899_internal *internal = &state->internal;
	struct stb0899_params *params = &state->params;

	derot_step = (params->srate / 4L) / internal->mclk;
	derot_limit = (internal->sub_range / 2L) / internal->mclk;
	derot_freq = internal->derot_freq;

	do {
		if ((internal->status != CARRIEROK) || (FUNC8(state) != DATAOK)) {

			derot_freq += index * internal->direction * derot_step;	/* next zig zag derotator position */
			if (FUNC5(derot_freq) > derot_limit)
				next_loop--;

			if (next_loop) {
				FUNC6(state->verbose, FE_DEBUG, 1, "Derot freq=%d, mclk=%d", derot_freq, internal->mclk);
				reg = FUNC9(state, STB0899_CFD);
				FUNC4(CFD_ON, reg, 1);
				FUNC11(state, STB0899_CFD, reg);

				FUNC4(CFRM, cfr[0], FUNC2(internal->inversion * derot_freq));
				FUNC4(CFRL, cfr[1], FUNC0(internal->inversion * derot_freq));
				FUNC12(state, STB0899_CFRM, cfr, 2); /* derotator frequency	*/

				FUNC7(state);
				index++;
			}
		}
		internal->direction = -internal->direction; /* change zig zag direction */
	} while ((internal->status != DATAOK) && next_loop);

	if (internal->status == DATAOK) {
		FUNC10(state, STB0899_CFRM, cfr, 2); /* get derotator frequency */

		/* store autodetected IQ swapping as default for DVB-S2 tuning */
		reg = FUNC9(state, STB0899_IQSWAP);
		if (FUNC3(SYM, reg))
			internal->inversion = IQ_SWAP_ON;
		else
			internal->inversion = IQ_SWAP_OFF;

		internal->derot_freq = internal->inversion * FUNC1(cfr[0], cfr[1]);
		FUNC6(state->verbose, FE_DEBUG, 1, "------> DATAOK ! Derot Freq=%d", internal->derot_freq);
	}

	return internal->status;
}