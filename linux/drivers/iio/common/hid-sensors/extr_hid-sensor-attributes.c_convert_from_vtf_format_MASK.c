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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int*,int*) ; 

__attribute__((used)) static void FUNC4(u32 value, int size, int exp,
					int *val1, int *val2)
{
	int sign = 1;

	if (value & FUNC0(size*8 - 1)) {
		value =  ((1LL << (size * 8)) - value);
		sign = -1;
	}
	exp = FUNC1(exp);
	if (exp >= 0) {
		*val1 = sign * value * FUNC2(10, exp);
		*val2 = 0;
	} else {
		FUNC3(value, -exp, val1, val2);
		if (*val1)
			*val1 = sign * (*val1);
		else
			*val2 = sign * (*val2);
	}
}