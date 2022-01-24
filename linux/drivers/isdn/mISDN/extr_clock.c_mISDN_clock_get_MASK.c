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
typedef  int /*<<< orphan*/  u_long ;
typedef  unsigned short u16 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 unsigned short iclock_count ; 
 int /*<<< orphan*/  iclock_lock ; 
 int /*<<< orphan*/  iclock_timestamp ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

unsigned short
FUNC5(void)
{
	u_long		flags;
	ktime_t		timestamp_now;
	u16		delta;
	u16		count;

	FUNC3(&iclock_lock, flags);
	/* calc elapsed time by system clock */
	timestamp_now = FUNC1();
	delta = FUNC0(FUNC2(timestamp_now, iclock_timestamp),
			(NSEC_PER_SEC / 8000));
	/* add elapsed time to counter */
	count =	iclock_count + delta;
	FUNC4(&iclock_lock, flags);
	return count;
}