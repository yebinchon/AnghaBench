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
typedef  int u32 ;
struct stv090x_state {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TMGREG0 ; 
 int /*<<< orphan*/  TMGREG1 ; 
 int /*<<< orphan*/  TMGREG2 ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static u32 FUNC2(struct stv090x_state *state, u32 srate)
{
	s32 offst_tmg;

	offst_tmg  = FUNC0(state, TMGREG2) << 16;
	offst_tmg |= FUNC0(state, TMGREG1) <<  8;
	offst_tmg |= FUNC0(state, TMGREG0);

	offst_tmg = FUNC1(offst_tmg, 24); /* 2's complement */
	if (!offst_tmg)
		offst_tmg = 1;

	offst_tmg  = ((s32) srate * 10) / ((s32) 0x1000000 / offst_tmg);
	offst_tmg /= 320;

	return offst_tmg;
}