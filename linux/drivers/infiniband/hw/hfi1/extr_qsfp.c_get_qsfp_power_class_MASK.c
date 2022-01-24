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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QSFP_HIGH_PWR_UNUSED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(u8 power_byte)
{
	if (FUNC0(power_byte) == QSFP_HIGH_PWR_UNUSED)
		/* power classes count from 1, their bit encodings from 0 */
		return (FUNC1(power_byte) + 1);
	/*
	 * 00 in the high power classes stands for unused, bringing
	 * balance to the off-by-1 offset above, we add 4 here to
	 * account for the difference between the low and high power
	 * groups
	 */
	return (FUNC0(power_byte) + 4);
}