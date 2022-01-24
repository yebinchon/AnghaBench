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
struct gpio_desc {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct gpiod_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct gpiod_data *data = FUNC0(dev);
	struct gpio_desc *desc = data->desc;
	ssize_t			status;

	FUNC3(&data->mutex);

	if (FUNC5(buf, "high"))
		status = FUNC2(desc, 1);
	else if (FUNC5(buf, "out") || FUNC5(buf, "low"))
		status = FUNC2(desc, 0);
	else if (FUNC5(buf, "in"))
		status = FUNC1(desc);
	else
		status = -EINVAL;

	FUNC4(&data->mutex);

	return status ? : size;
}