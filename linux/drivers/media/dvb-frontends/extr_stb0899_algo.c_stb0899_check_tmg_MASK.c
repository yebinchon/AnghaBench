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
typedef  void* u8 ;
struct stb0899_internal {int status; int /*<<< orphan*/  t_derot; } ;
struct stb0899_state {int /*<<< orphan*/  verbose; struct stb0899_internal internal; } ;
typedef  void* s8 ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;

/* Variables and functions */
 int ANALOGCARRIER ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int NOTIMING ; 
 int FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  STB0899_RTF ; 
 int /*<<< orphan*/  STB0899_TLIR ; 
 int TIMINGOK ; 
 int /*<<< orphan*/  TLIR_TMG_LOCK_IND ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stb0899_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum stb0899_status FUNC6(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;
	int lock;
	u8 reg;
	s8 timing;

	FUNC3(internal->t_derot);

	FUNC5(state, STB0899_RTF, 0xf2);
	reg = FUNC4(state, STB0899_TLIR);
	lock = FUNC0(TLIR_TMG_LOCK_IND, reg);
	timing = FUNC4(state, STB0899_RTF);

	if (lock >= 42) {
		if ((lock > 48) && (FUNC1(timing) >= 110)) {
			internal->status = ANALOGCARRIER;
			FUNC2(state->verbose, FE_DEBUG, 1, "-->ANALOG Carrier !");
		} else {
			internal->status = TIMINGOK;
			FUNC2(state->verbose, FE_DEBUG, 1, "------->TIMING OK !");
		}
	} else {
		internal->status = NOTIMING;
		FUNC2(state->verbose, FE_DEBUG, 1, "-->NO TIMING !");
	}
	return internal->status;
}