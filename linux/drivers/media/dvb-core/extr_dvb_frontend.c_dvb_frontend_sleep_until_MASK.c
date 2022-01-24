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
typedef  int /*<<< orphan*/  u32 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(ktime_t *waketime, u32 add_usec)
{
	s32 delta;

	*waketime = FUNC0(*waketime, add_usec);
	delta = FUNC2(FUNC1(), *waketime);
	if (delta > 2500) {
		FUNC3((delta - 1500) / 1000);
		delta = FUNC2(FUNC1(), *waketime);
	}
	if (delta > 0)
		FUNC4(delta);
}