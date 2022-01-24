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
struct ads7846 {int disabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  suspended; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ads7846 *ts)
{
	FUNC1(&ts->lock);

	if (!ts->disabled) {

		if  (!ts->suspended)
			FUNC0(ts);

		ts->disabled = true;
	}

	FUNC2(&ts->lock);
}