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
struct input_dev_poller {unsigned int poll_interval_min; unsigned int poll_interval_max; unsigned int poll_interval; int /*<<< orphan*/  work; } ;
struct input_dev {int /*<<< orphan*/  mutex; scalar_t__ users; struct input_dev_poller* poller; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev_poller*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					   struct device_attribute *attr,
					   const char *buf, size_t count)
{
	struct input_dev *input = FUNC5(dev);
	struct input_dev_poller *poller = input->poller;
	unsigned int interval;
	int err;

	err = FUNC2(buf, 0, &interval);
	if (err)
		return err;

	if (interval < poller->poll_interval_min)
		return -EINVAL;

	if (interval > poller->poll_interval_max)
		return -EINVAL;

	FUNC3(&input->mutex);

	poller->poll_interval = interval;

	if (input->users) {
		FUNC0(&poller->work);
		if (poller->poll_interval > 0)
			FUNC1(poller);
	}

	FUNC4(&input->mutex);

	return count;
}