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
typedef  int u8 ;
typedef  int u32 ;
struct stv090x_state {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AGC2REF ; 
 int /*<<< orphan*/  CARFREQ ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  CFR_AUTOSCAN_FIELD ; 
 int /*<<< orphan*/  DMDCFGMD ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  DSTATUS ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  RTC ; 
 int /*<<< orphan*/  RTCS2 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TMGLOCK_QUALITY_FIELD ; 
 int /*<<< orphan*/  TMGTHFALL ; 
 int /*<<< orphan*/  TMGTHRISE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct stv090x_state *state)
{
	u32 reg;
	s32 tmg_cpt = 0, i;
	u8 freq, tmg_thh, tmg_thl;
	int tmg_lock = 0;

	freq = FUNC1(state, CARFREQ);
	tmg_thh = FUNC1(state, TMGTHRISE);
	tmg_thl = FUNC1(state, TMGTHFALL);
	if (FUNC3(state, TMGTHRISE, 0x20) < 0)
		goto err;
	if (FUNC3(state, TMGTHFALL, 0x00) < 0)
		goto err;

	reg = FUNC1(state, DMDCFGMD);
	FUNC2(reg, CFR_AUTOSCAN_FIELD, 0x00); /* stop carrier offset search */
	if (FUNC3(state, DMDCFGMD, reg) < 0)
		goto err;
	if (FUNC3(state, RTC, 0x80) < 0)
		goto err;

	if (FUNC3(state, RTCS2, 0x40) < 0)
		goto err;
	if (FUNC3(state, CARFREQ, 0x00) < 0)
		goto err;

	if (FUNC3(state, CFRINIT1, 0x00) < 0) /* set car ofset to 0 */
		goto err;
	if (FUNC3(state, CFRINIT0, 0x00) < 0)
		goto err;
	if (FUNC3(state, AGC2REF, 0x65) < 0)
		goto err;

	if (FUNC3(state, DMDISTATE, 0x18) < 0) /* trigger acquisition */
		goto err;
	FUNC5(10);

	for (i = 0; i < 10; i++) {
		reg = FUNC1(state, DSTATUS);
		if (FUNC0(reg, TMGLOCK_QUALITY_FIELD) >= 2)
			tmg_cpt++;
		FUNC5(1);
	}
	if (tmg_cpt >= 3)
		tmg_lock = 1;

	if (FUNC3(state, AGC2REF, 0x38) < 0)
		goto err;
	if (FUNC3(state, RTC, 0x88) < 0) /* DVB-S1 timing */
		goto err;
	if (FUNC3(state, RTCS2, 0x68) < 0) /* DVB-S2 timing */
		goto err;

	if (FUNC3(state, CARFREQ, freq) < 0)
		goto err;
	if (FUNC3(state, TMGTHRISE, tmg_thh) < 0)
		goto err;
	if (FUNC3(state, TMGTHFALL, tmg_thl) < 0)
		goto err;

	return	tmg_lock;

err:
	FUNC4(FE_ERROR, 1, "I/O error");
	return -1;
}