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
 int APL_NUM_CHANNELS ; 
 int FUNC0 (int) ; 
 int EINVAL ; 
 int chan_mask ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
	int	i, ret = 0;

	/* Check dramtype and ECC mode for each present DIMM */
	for (i = 0; i < APL_NUM_CHANNELS; i++)
		if (chan_mask & FUNC0(i))
			ret += FUNC1(i);
	return ret ? -EINVAL : 0;
}