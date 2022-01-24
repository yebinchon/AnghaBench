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
typedef  int /*<<< orphan*/  u64 ;
typedef  int time64_t ;
typedef  int /*<<< orphan*/  atomic64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 () ; 

u64 FUNC4(void)
{
	static atomic64_t seq;

	if (!FUNC1(&seq)) {
		time64_t time = FUNC3();

		/*
		 * This code is unlikely to still be needed in year 2106,
		 * but just in case, let's use a few more bits for timestamps
		 * after y2038 to be sure they keep increasing monotonically
		 * for the next few hundred years...
		 */
		if (time < 0x80000000)
			FUNC2(&seq, (FUNC3()) << 32);
		else
			FUNC2(&seq, 0x8000000000000000ull |
					   FUNC3() << 24);
	}

	return FUNC0(&seq);
}