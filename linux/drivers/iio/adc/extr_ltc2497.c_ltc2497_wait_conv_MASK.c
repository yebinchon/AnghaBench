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
struct ltc2497_st {int /*<<< orphan*/  time_prev; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ LTC2497_CONVERSION_TIME_MS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ltc2497_st *st)
{
	s64 time_elapsed;

	time_elapsed = FUNC1(FUNC0(), st->time_prev);

	if (time_elapsed < LTC2497_CONVERSION_TIME_MS) {
		/* delay if conversion time not passed
		 * since last read or write
		 */
		if (FUNC2(
		    LTC2497_CONVERSION_TIME_MS - time_elapsed))
			return -ERESTARTSYS;

		return 0;
	}

	if (time_elapsed - LTC2497_CONVERSION_TIME_MS <= 0) {
		/* We're in automatic mode -
		 * so the last reading is stil not outdated
		 */
		return 0;
	}

	return 1;
}