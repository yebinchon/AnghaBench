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
struct joydev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  open; int /*<<< orphan*/  handle; int /*<<< orphan*/  exist; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct joydev*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct joydev *joydev)
{
	int retval;

	retval = FUNC2(&joydev->mutex);
	if (retval)
		return retval;

	if (!joydev->exist)
		retval = -ENODEV;
	else if (!joydev->open++) {
		retval = FUNC0(&joydev->handle);
		if (retval)
			joydev->open--;
		else
			FUNC1(joydev);
	}

	FUNC3(&joydev->mutex);
	return retval;
}