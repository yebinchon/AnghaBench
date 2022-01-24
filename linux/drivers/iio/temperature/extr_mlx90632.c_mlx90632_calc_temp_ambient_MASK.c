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
typedef  long long s64 ;
typedef  long long s32 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 long long FUNC0 (long long,long long) ; 
 long long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC2(s16 ambient_new_raw, s16 ambient_old_raw,
				      s32 P_T, s32 P_R, s32 P_G, s32 P_O,
				      s16 Gb)
{
	s64 Asub, Bsub, Ablock, Bblock, Cblock, AMB, sum;

	AMB = FUNC1(ambient_new_raw, ambient_old_raw,
					   Gb);
	Asub = ((s64)P_T * 10000000000LL) >> 44ULL;
	Bsub = AMB - (((s64)P_R * 1000LL) >> 8ULL);
	Ablock = Asub * (Bsub * Bsub);
	Bblock = (FUNC0(Bsub * 10000000LL, P_G)) << 20ULL;
	Cblock = ((s64)P_O * 10000000000LL) >> 8ULL;

	sum = FUNC0(Ablock, 1000000LL) + Bblock + Cblock;

	return FUNC0(sum, 10000000LL);
}