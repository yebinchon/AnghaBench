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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(u8 *ctr_pos, unsigned int increment)
{
	__be64 *high_be = (__be64 *)ctr_pos;
	__be64 *low_be = high_be + 1;
	u64 orig_low = FUNC0(*low_be);
	u64 new_low = orig_low + (u64)increment;

	*low_be = FUNC1(new_low);
	if (new_low < orig_low)
		/* there was a carry from the low 8 bytes */
		*high_be = FUNC1(FUNC0(*high_be) + 1);
}