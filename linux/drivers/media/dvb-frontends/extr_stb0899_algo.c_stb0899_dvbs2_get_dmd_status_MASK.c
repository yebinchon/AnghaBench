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
typedef  int /*<<< orphan*/  u32 ;
struct stb0899_state {int /*<<< orphan*/  verbose; } ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;

/* Variables and functions */
 int /*<<< orphan*/  CSM_LOCK ; 
 int /*<<< orphan*/  DMD_STAT2 ; 
 int /*<<< orphan*/  DMD_STATUS ; 
 int DVBS2_DEMOD_LOCK ; 
 int DVBS2_DEMOD_NOLOCK ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  IF_AGC_LOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  UWP_LOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static enum stb0899_status FUNC4(struct stb0899_state *state, int timeout)
{
	int time = -10, lock = 0, uwp, csm;
	u32 reg;

	do {
		reg = FUNC1(STB0899_S2DEMOD, DMD_STATUS);
		FUNC2(state->verbose, FE_DEBUG, 1, "DMD_STATUS=[0x%02x]", reg);
		if (FUNC0(IF_AGC_LOCK, reg))
			FUNC2(state->verbose, FE_DEBUG, 1, "------------->IF AGC LOCKED !");
		reg = FUNC1(STB0899_S2DEMOD, DMD_STAT2);
		FUNC2(state->verbose, FE_DEBUG, 1, "----------->DMD STAT2=[0x%02x]", reg);
		uwp = FUNC0(UWP_LOCK, reg);
		csm = FUNC0(CSM_LOCK, reg);
		if (uwp && csm)
			lock = 1;

		time += 10;
		FUNC3(10);

	} while ((!lock) && (time <= timeout));

	if (lock) {
		FUNC2(state->verbose, FE_DEBUG, 1, "----------------> DVB-S2 LOCK !");
		return DVBS2_DEMOD_LOCK;
	} else {
		return DVBS2_DEMOD_NOLOCK;
	}
}