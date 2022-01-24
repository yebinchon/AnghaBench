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
struct stv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct stv*,int,int*) ; 
 int FUNC1 (struct stv*,int,int) ; 

__attribute__((used)) static int FUNC2(struct stv *state, u32 field, u8 val)
{
	int status;
	u8 shift, mask, old, new;

	status = FUNC0(state, field >> 16, &old);
	if (status)
		return status;
	mask = field & 0xff;
	shift = (field >> 12) & 0xf;
	new = ((val << shift) & mask) | (old & ~mask);
	if (new == old)
		return 0;
	return FUNC1(state, field >> 16, new);
}