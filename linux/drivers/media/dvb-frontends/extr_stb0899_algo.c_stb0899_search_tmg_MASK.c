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
struct stb0899_internal {scalar_t__ status; long sub_range; long mclk; int direction; short inversion; int derot_freq; } ;
struct stb0899_state {int /*<<< orphan*/  verbose; struct stb0899_params params; struct stb0899_internal internal; } ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;

/* Variables and functions */
 int /*<<< orphan*/  CFRL ; 
 int /*<<< orphan*/  CFRM ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (short) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (short) ; 
 scalar_t__ NOTIMING ; 
 int /*<<< orphan*/  STB0899_CFRM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TIMINGOK ; 
 short FUNC4 (short) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC6 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static enum stb0899_status FUNC9(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;
	struct stb0899_params *params = &state->params;

	short int derot_step, derot_freq = 0, derot_limit, next_loop = 3;
	int index = 0;
	u8 cfr[2];

	internal->status = NOTIMING;

	/* timing loop computation & symbol rate optimisation	*/
	derot_limit = (internal->sub_range / 2L) / internal->mclk;
	derot_step = (params->srate / 2L) / internal->mclk;

	while ((FUNC6(state) != TIMINGOK) && next_loop) {
		index++;
		derot_freq += index * internal->direction * derot_step;	/* next derot zig zag position	*/

		if (FUNC4(derot_freq) > derot_limit)
			next_loop--;

		if (next_loop) {
			FUNC3(CFRM, cfr[0], FUNC2(internal->inversion * derot_freq));
			FUNC3(CFRL, cfr[1], FUNC0(internal->inversion * derot_freq));
			FUNC8(state, STB0899_CFRM, cfr, 2); /* derotator frequency		*/
		}
		internal->direction = -internal->direction;	/* Change zigzag direction		*/
	}

	if (internal->status == TIMINGOK) {
		FUNC7(state, STB0899_CFRM, cfr, 2); /* get derotator frequency		*/
		internal->derot_freq = internal->inversion * FUNC1(cfr[0], cfr[1]);
		FUNC5(state->verbose, FE_DEBUG, 1, "------->TIMING OK ! Derot Freq = %d", internal->derot_freq);
	}

	return internal->status;
}