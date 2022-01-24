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
typedef  size_t u8 ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 unsigned int FUNC1 (int) ; 
 int* sii902x_mclk_div_table ; 

__attribute__((used)) static int FUNC2(u8 *i2s_config_reg, unsigned int rate,
				   unsigned int mclk)
{
	int div = mclk / rate;
	int distance = 100000;
	u8 i, nearest = 0;

	for (i = 0; i < FUNC0(sii902x_mclk_div_table); i++) {
		unsigned int d = FUNC1(div - sii902x_mclk_div_table[i]);

		if (d >= distance)
			continue;

		nearest = i;
		distance = d;
		if (d == 0)
			break;
	}

	*i2s_config_reg |= nearest << 4;

	return sii902x_mclk_div_table[nearest];
}