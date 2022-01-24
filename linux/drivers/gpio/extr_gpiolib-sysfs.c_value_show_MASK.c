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
typedef  char ssize_t ;

/* Variables and functions */
 struct gpiod_data* FUNC0 (struct device*) ; 
 char FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct gpiod_data *data = FUNC0(dev);
	struct gpio_desc *desc = data->desc;
	ssize_t			status;

	FUNC2(&data->mutex);

	status = FUNC1(desc);
	if (status < 0)
		goto err;

	buf[0] = '0' + status;
	buf[1] = '\n';
	status = 2;
err:
	FUNC3(&data->mutex);

	return status;
}