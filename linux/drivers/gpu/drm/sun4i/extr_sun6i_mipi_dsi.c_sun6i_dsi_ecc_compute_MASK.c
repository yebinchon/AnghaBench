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

/* Variables and functions */
 int FUNC0 (int*) ; 
 unsigned int FUNC1 (int) ; 
 int* sun6i_dsi_ecc_array ; 

__attribute__((used)) static u32 FUNC2(unsigned int data)
{
	int i;
	u8 ecc = 0;

	for (i = 0; i < FUNC0(sun6i_dsi_ecc_array); i++) {
		u32 field = sun6i_dsi_ecc_array[i];
		bool init = false;
		u8 val = 0;
		int j;

		for (j = 0; j < 24; j++) {
			if (!(FUNC1(j) & field))
				continue;

			if (!init) {
				val = (FUNC1(j) & data) ? 1 : 0;
				init = true;
			} else {
				val ^= (FUNC1(j) & data) ? 1 : 0;
			}
		}

		ecc |= val << i;
	}

	return ecc;
}