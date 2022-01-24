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
struct input_dev {int /*<<< orphan*/  dev; struct ff_device* ff; } ;
struct file {int dummy; } ;
struct ff_device {int max_effects; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct input_dev *dev, struct file *file)
{
	struct ff_device *ff = dev->ff;
	int i;

	FUNC0(&dev->dev, "flushing now\n");

	FUNC2(&ff->mutex);

	for (i = 0; i < ff->max_effects; i++)
		FUNC1(dev, i, file);

	FUNC3(&ff->mutex);

	return 0;
}