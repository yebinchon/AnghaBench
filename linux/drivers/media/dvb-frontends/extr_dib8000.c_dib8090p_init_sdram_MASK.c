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
typedef  int u16 ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct dib8000_state *state)
{
	u16 reg = 0;
	FUNC2("init sdram\n");

	reg = FUNC0(state, 274) & 0xfff0;
	FUNC1(state, 274, reg | 0x7); /* P_dintlv_delay_ram = 7 because of MobileSdram */

	FUNC1(state, 1803, (7 << 2));

	reg = FUNC0(state, 1280);
	FUNC1(state, 1280,  reg | (1 << 2)); /* force restart P_restart_sdram */
	FUNC1(state, 1280,  reg); /* release restart P_restart_sdram */

	return 0;
}