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

/* Variables and functions */
 void* FUNC0 (int,int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u16 FUNC2(long rpm)
{
	u16 count, regs;

	if (rpm == 0) {
		count = 0x3fff;
	} else {
		rpm = FUNC0(rpm, 1, 1000000);
		count = FUNC0((1350000 + rpm) / rpm, 1, 0x3ffe);
	}

	regs = count << 2;
	return FUNC1(regs);
}