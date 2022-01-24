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
 int FUNC1 (struct lg216x_state*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct lg216x_state *state,
					  int polarity)
{
	u8 val;
	int ret;

	ret = FUNC0(state, 0x0008, &val);
	if (FUNC2(ret))
		goto fail;

	val &= 0xfe;
	val |= (polarity) ? 0x01 : 0x00;

	ret = FUNC1(state, 0x0008, val);
	FUNC2(ret);
fail:
	return ret;
}