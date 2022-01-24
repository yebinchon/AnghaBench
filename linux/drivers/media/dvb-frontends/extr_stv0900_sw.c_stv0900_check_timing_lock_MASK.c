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
struct stv0900_internal {int dummy; } ;
typedef  int s32 ;
typedef  enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;

/* Variables and functions */
 int /*<<< orphan*/  AGC2REF ; 
 int /*<<< orphan*/  CARFREQ ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  CFR_AUTOSCAN ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int FALSE ; 
 int /*<<< orphan*/  RTC ; 
 int /*<<< orphan*/  RTCS2 ; 
 int /*<<< orphan*/  TMGLOCK_QUALITY ; 
 int /*<<< orphan*/  TMGTHFALL ; 
 int /*<<< orphan*/  TMGTHRISE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stv0900_internal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stv0900_internal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct stv0900_internal *intp,
				enum fe_stv0900_demod_num demod)
{
	int timingLock = FALSE;
	s32	i,
		timingcpt = 0;
	u8	car_freq,
		tmg_th_high,
		tmg_th_low;

	car_freq = FUNC2(intp, CARFREQ);
	tmg_th_high = FUNC2(intp, TMGTHRISE);
	tmg_th_low = FUNC2(intp, TMGTHFALL);
	FUNC4(intp, TMGTHRISE, 0x20);
	FUNC4(intp, TMGTHFALL, 0x0);
	FUNC3(intp, CFR_AUTOSCAN, 0);
	FUNC4(intp, RTC, 0x80);
	FUNC4(intp, RTCS2, 0x40);
	FUNC4(intp, CARFREQ, 0x0);
	FUNC4(intp, CFRINIT1, 0x0);
	FUNC4(intp, CFRINIT0, 0x0);
	FUNC4(intp, AGC2REF, 0x65);
	FUNC4(intp, DMDISTATE, 0x18);
	FUNC0(7);

	for (i = 0; i < 10; i++) {
		if (FUNC1(intp, TMGLOCK_QUALITY) >= 2)
			timingcpt++;

		FUNC0(1);
	}

	if (timingcpt >= 3)
		timingLock = TRUE;

	FUNC4(intp, AGC2REF, 0x38);
	FUNC4(intp, RTC, 0x88);
	FUNC4(intp, RTCS2, 0x68);
	FUNC4(intp, CARFREQ, car_freq);
	FUNC4(intp, TMGTHRISE, tmg_th_high);
	FUNC4(intp, TMGTHFALL, tmg_th_low);

	return	timingLock;
}