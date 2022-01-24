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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(int *val0, int *val1, int scale0,
				  int scale1, int exp)
{
	int divisor;
	int i;
	int x;
	int res;
	int rem;

	if (exp > 0) {
		*val0 = scale0 * FUNC1(10, exp);
		res = 0;
		if (exp > 9) {
			*val1 = 0;
			return;
		}
		for (i = 0; i < exp; ++i) {
			divisor = FUNC1(10, 8 - i);
			x = scale1 / divisor;
			res += FUNC1(10, exp - 1 - i) * x;
			scale1 = scale1 % divisor;
		}
		*val0 += res;
		*val1 = scale1 * FUNC1(10, exp);
	} else if (exp < 0) {
		exp = FUNC0(exp);
		if (exp > 9) {
			*val0 = *val1 = 0;
			return;
		}
		divisor = FUNC1(10, exp);
		*val0 = scale0 / divisor;
		rem = scale0 % divisor;
		res = 0;
		for (i = 0; i < (9 - exp); ++i) {
			divisor = FUNC1(10, 8 - i);
			x = scale1 / divisor;
			res += FUNC1(10, 8 - exp - i) * x;
			scale1 = scale1 % divisor;
		}
		*val1 = rem * FUNC1(10, 9 - exp) + res;
	} else {
		*val0 = scale0;
		*val1 = scale1;
	}
}