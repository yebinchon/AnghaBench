#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct lg216x_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ if_khz; } ;

/* Variables and functions */
 int FUNC0 (struct lg216x_state*,int,int*) ; 
 int FUNC1 (struct lg216x_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct lg216x_state *state)
{
	u8 val;
	int ret;

	FUNC2("%d KHz\n", state->cfg->if_khz);

	ret = FUNC0(state, 0x0132, &val);
	if (FUNC3(ret))
		goto fail;

	val &= 0xfb;
	val |= (0 == state->cfg->if_khz) ? 0x04 : 0x00;

	ret = FUNC1(state, 0x0132, val);
	FUNC3(ret);

	/* if NOT zero IF, 6 MHz is the default */
fail:
	return ret;
}