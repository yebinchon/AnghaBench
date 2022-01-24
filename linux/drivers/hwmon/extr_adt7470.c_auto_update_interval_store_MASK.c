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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long auto_update_interval; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 struct adt7470_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					  struct device_attribute *devattr,
					  const char *buf, size_t count)
{
	struct adt7470_data *data = FUNC1(dev);
	long temp;

	if (FUNC2(buf, 10, &temp))
		return -EINVAL;

	temp = FUNC0(temp, 0, 60000);

	FUNC3(&data->lock);
	data->auto_update_interval = temp;
	FUNC4(&data->lock);

	return count;
}