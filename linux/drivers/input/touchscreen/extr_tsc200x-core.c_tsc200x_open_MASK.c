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
struct tsc200x {int opened; int /*<<< orphan*/  mutex; int /*<<< orphan*/  suspended; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tsc200x*) ; 
 struct tsc200x* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct input_dev *input)
{
	struct tsc200x *ts = FUNC1(input);

	FUNC2(&ts->mutex);

	if (!ts->suspended)
		FUNC0(ts);

	ts->opened = true;

	FUNC3(&ts->mutex);

	return 0;
}