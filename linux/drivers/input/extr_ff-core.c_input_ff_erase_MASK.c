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
struct input_dev {int /*<<< orphan*/  evbit; struct ff_device* ff; } ;
struct file {int dummy; } ;
struct ff_device {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  EV_FF ; 
 int FUNC0 (struct input_dev*,int,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct input_dev *dev, int effect_id, struct file *file)
{
	struct ff_device *ff = dev->ff;
	int ret;

	if (!FUNC3(EV_FF, dev->evbit))
		return -ENOSYS;

	FUNC1(&ff->mutex);
	ret = FUNC0(dev, effect_id, file);
	FUNC2(&ff->mutex);

	return ret;
}