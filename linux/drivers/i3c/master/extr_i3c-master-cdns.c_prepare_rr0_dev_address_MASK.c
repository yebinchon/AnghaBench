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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(u32 addr)
{
	u32 ret = (addr << 1) & 0xff;

	/* RR0[7:1] = addr[6:0] */
	ret |= (addr & FUNC0(6, 0)) << 1;

	/* RR0[15:13] = addr[9:7] */
	ret |= (addr & FUNC0(9, 7)) << 6;

	/* RR0[0] = ~XOR(addr[6:0]) */
	if (!(FUNC1(addr & 0x7f) & 1))
		ret |= 1;

	return ret;
}