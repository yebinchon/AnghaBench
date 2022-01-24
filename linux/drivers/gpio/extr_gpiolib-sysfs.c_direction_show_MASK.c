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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_IS_OUT ; 
 struct gpiod_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct gpiod_data *data = FUNC0(dev);
	struct gpio_desc *desc = data->desc;
	ssize_t			status;

	FUNC2(&data->mutex);

	FUNC1(desc);
	status = FUNC4(buf, "%s\n",
			FUNC5(FLAG_IS_OUT, &desc->flags)
				? "out" : "in");

	FUNC3(&data->mutex);

	return status;
}