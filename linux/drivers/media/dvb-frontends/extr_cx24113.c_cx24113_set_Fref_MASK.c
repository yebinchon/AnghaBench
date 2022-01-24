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
struct cx24113_state {int rev; scalar_t__ vcodiv; } ;

/* Variables and functions */
 scalar_t__ VCODIV4 ; 
 int FUNC0 (struct cx24113_state*,int) ; 
 int FUNC1 (struct cx24113_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct cx24113_state *state, u8 high)
{
	u8 xtal = FUNC0(state, 0x02);
	if (state->rev == 0x43 && state->vcodiv == VCODIV4)
		high = 1;

	xtal &= ~0x2;
	if (high)
		xtal |= high << 1;
	return FUNC1(state, 0x02, xtal);
}