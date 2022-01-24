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

__attribute__((used)) static u32 FUNC3(int size, int exp, int val1, int val2)
{
	int divisor;
	u32 value;
	int sign = 1;

	if (val1 < 0 || val2 < 0)
		sign = -1;
	exp = FUNC1(exp);
	if (exp < 0) {
		divisor = FUNC2(10, 6 + exp);
		value = FUNC0(val1) * FUNC2(10, -exp);
		value += FUNC0(val2) / divisor;
	} else {
		divisor = FUNC2(10, exp);
		value = FUNC0(val1) / divisor;
	}
	if (sign < 0)
		value =  ((1LL << (size * 8)) - value);

	return value;
}