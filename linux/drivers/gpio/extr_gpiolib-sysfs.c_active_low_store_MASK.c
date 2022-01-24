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
struct gpiod_data {int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 struct gpiod_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*,long) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct gpiod_data	*data = FUNC0(dev);
	ssize_t			status;
	long			value;

	FUNC3(&data->mutex);

	status = FUNC2(buf, 0, &value);
	if (status == 0)
		status = FUNC1(dev, value);

	FUNC4(&data->mutex);

	return status ? : size;
}