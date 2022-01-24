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

int FUNC1(u32 value, u32 bitlen)
{
	if (!bitlen || bitlen >= 32)
		return (int)value;

	if (value & (u32)(1 << (bitlen - 1)))
		return (int)(FUNC0(31, bitlen) | value);
	else
		return (int)(FUNC0(bitlen - 1, 0) & value);
}