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
struct input_dev {int dummy; } ;
struct ad7879 {int /*<<< orphan*/  suspended; int /*<<< orphan*/  disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad7879*) ; 
 struct ad7879* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *input)
{
	struct ad7879 *ts = FUNC1(input);

	/* protected by input->mutex */
	if (!ts->disabled && !ts->suspended)
		FUNC0(ts);

	return 0;
}