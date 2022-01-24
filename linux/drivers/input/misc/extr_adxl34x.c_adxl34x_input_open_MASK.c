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
struct adxl34x {int opened; int /*<<< orphan*/  mutex; int /*<<< orphan*/  disabled; int /*<<< orphan*/  suspended; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adxl34x*) ; 
 struct adxl34x* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct input_dev *input)
{
	struct adxl34x *ac = FUNC1(input);

	FUNC2(&ac->mutex);

	if (!ac->suspended && !ac->disabled)
		FUNC0(ac);

	ac->opened = true;

	FUNC3(&ac->mutex);

	return 0;
}