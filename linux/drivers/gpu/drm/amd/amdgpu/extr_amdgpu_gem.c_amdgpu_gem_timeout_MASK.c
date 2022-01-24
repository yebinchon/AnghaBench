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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned long FUNC4 (scalar_t__) ; 

unsigned long FUNC5(uint64_t timeout_ns)
{
	unsigned long timeout_jiffies;
	ktime_t timeout;

	/* clamp timeout if it's to large */
	if (((int64_t)timeout_ns) < 0)
		return MAX_SCHEDULE_TIMEOUT;

	timeout = FUNC1(FUNC3(timeout_ns), FUNC0());
	if (FUNC2(timeout) < 0)
		return 0;

	timeout_jiffies = FUNC4(FUNC2(timeout));
	/*  clamp timeout to avoid unsigned-> signed overflow */
	if (timeout_jiffies > MAX_SCHEDULE_TIMEOUT )
		return MAX_SCHEDULE_TIMEOUT - 1;

	return timeout_jiffies;
}