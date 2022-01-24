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
struct gpiod_data {int /*<<< orphan*/  mutex; struct gpio_desc* desc; } ;
struct gpio_desc {int /*<<< orphan*/  flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EPERM ; 
 int /*<<< orphan*/  FLAG_IS_OUT ; 
 struct gpiod_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*,long) ; 
 scalar_t__ FUNC2 (char const) ; 
 size_t FUNC3 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct gpiod_data *data = FUNC0(dev);
	struct gpio_desc *desc = data->desc;
	ssize_t status = 0;

	FUNC4(&data->mutex);

	if (!FUNC6(FLAG_IS_OUT, &desc->flags)) {
		status = -EPERM;
	} else {
		long		value;

		if (size <= 2 && FUNC2(buf[0]) &&
		    (size == 1 || buf[1] == '\n'))
			value = buf[0] - '0';
		else
			status = FUNC3(buf, 0, &value);
		if (status == 0) {
			FUNC1(desc, value);
			status = size;
		}
	}

	FUNC5(&data->mutex);

	return status;
}