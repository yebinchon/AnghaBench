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
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline void
FUNC3(unsigned long timestamp_jiffies, int to_wait_ms)
{
	unsigned long target_jiffies, tmp_jiffies, remaining_jiffies;

	/*
	 * Don't re-read the value of "jiffies" every time since it may change
	 * behind our back and break the math.
	 */
	tmp_jiffies = jiffies;
	target_jiffies = timestamp_jiffies +
			 FUNC0(to_wait_ms);

	if (FUNC2(target_jiffies, tmp_jiffies)) {
		remaining_jiffies = target_jiffies - tmp_jiffies;
		while (remaining_jiffies)
			remaining_jiffies =
			    FUNC1(remaining_jiffies);
	}
}