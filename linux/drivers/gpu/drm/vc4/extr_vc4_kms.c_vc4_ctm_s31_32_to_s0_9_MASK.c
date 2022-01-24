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
typedef  int u64 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static u16 FUNC4(u64 in)
{
	u16 r;

	/* Sign bit. */
	r = in & FUNC1(63) ? FUNC0(9) : 0;

	if ((in & FUNC3(62, 32)) > 0) {
		/* We have zero integer bits so we can only saturate here. */
		r |= FUNC2(8, 0);
	} else {
		/* Otherwise take the 9 most important fractional bits. */
		r |= (in >> 23) & FUNC2(8, 0);
	}

	return r;
}