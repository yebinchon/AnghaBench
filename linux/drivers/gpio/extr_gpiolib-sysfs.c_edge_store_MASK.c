#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gpiod_data {unsigned char irq_flags; int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {unsigned char flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 size_t EINVAL ; 
 struct gpiod_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 size_t FUNC3 (struct device*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* trigger_types ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct gpiod_data *data = FUNC1(dev);
	unsigned char flags;
	ssize_t	status = size;
	int i;

	for (i = 0; i < FUNC0(trigger_types); i++) {
		if (FUNC6(trigger_types[i].name, buf))
			break;
	}

	if (i == FUNC0(trigger_types))
		return -EINVAL;

	flags = trigger_types[i].flags;

	FUNC4(&data->mutex);

	if (flags == data->irq_flags) {
		status = size;
		goto out_unlock;
	}

	if (data->irq_flags)
		FUNC2(dev);

	if (flags) {
		status = FUNC3(dev, flags);
		if (!status)
			status = size;
	}

out_unlock:
	FUNC5(&data->mutex);

	return status;
}