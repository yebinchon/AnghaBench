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
struct w8001 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  open_count; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  W8001_CMD_START ; 
 struct w8001* FUNC0 (struct input_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct w8001*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev)
{
	struct w8001 *w8001 = FUNC0(dev);
	int err;

	err = FUNC1(&w8001->mutex);
	if (err)
		return err;

	if (w8001->open_count++ == 0) {
		err = FUNC3(w8001, W8001_CMD_START, false);
		if (err)
			w8001->open_count--;
	}

	FUNC2(&w8001->mutex);
	return err;
}