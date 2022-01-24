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
 int EINVAL ; 
 unsigned long FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char const) ; 

int FUNC2(const char *cp, unsigned long *res, int scale)
{
	unsigned long result = 0;
	long decimals = -1;
	while (FUNC1(*cp) || (*cp == '.' && decimals < 0)) {
		if (*cp == '.')
			decimals = 0;
		else if (decimals < scale) {
			unsigned int value;
			value = *cp - '0';
			result = result * 10 + value;
			if (decimals >= 0)
				decimals++;
		}
		cp++;
	}
	if (*cp == '\n')
		cp++;
	if (*cp)
		return -EINVAL;
	if (decimals < 0)
		decimals = 0;
	*res = result * FUNC0(10, scale - decimals);
	return 0;
}