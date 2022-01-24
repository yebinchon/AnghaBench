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
struct lg216x_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lg216x_state*,int,int*) ; 
 int FUNC1 (struct lg216x_state*) ; 
 int FUNC2 (struct lg216x_state*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct lg216x_state *state,
				    int inverted)
{
	u8 val;
	int ret;

	ret = FUNC0(state, 0x0132, &val);
	if (FUNC3(ret))
		goto fail;

	val &= 0xfd;
	val |= (inverted) ? 0x02 : 0x00;

	ret = FUNC2(state, 0x0132, val);
	FUNC3(ret);
fail:
	return FUNC1(state);
}