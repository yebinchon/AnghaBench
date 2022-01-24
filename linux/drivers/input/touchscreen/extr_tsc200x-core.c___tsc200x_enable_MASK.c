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
struct tsc200x {scalar_t__ esd_timeout; int /*<<< orphan*/  esd_work; int /*<<< orphan*/  last_valid_interrupt; scalar_t__ reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tsc200x*) ; 

__attribute__((used)) static void FUNC4(struct tsc200x *ts)
{
	FUNC3(ts);

	if (ts->esd_timeout && ts->reset_gpio) {
		ts->last_valid_interrupt = jiffies;
		FUNC2(&ts->esd_work,
				FUNC1(
					FUNC0(ts->esd_timeout)));
	}
}