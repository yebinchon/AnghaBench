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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,int,int) ; 

__attribute__((used)) static void FUNC2(struct dib8000_state *state, u8 onoff)
{
	u16 tmp;

	tmp = FUNC0(state, 771);
	if (onoff) /* start P_restart_chd : channel_decoder */
		FUNC1(state, 771, tmp & 0xfffd);
	else /* stop P_restart_chd : channel_decoder */
		FUNC1(state, 771, tmp | (1<<1));
}