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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct pem_data {int /*<<< orphan*/  data_string; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pem_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct pem_data*) ; 
 long FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pem_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,long) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *da,
			     char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(da);
	struct pem_data *data = FUNC3(dev);
	long value;

	if (FUNC0(data))
		return FUNC1(data);

	value = FUNC2(data->data_string, sizeof(data->data_string),
			     attr->index);

	return FUNC4(buf, PAGE_SIZE, "%ld\n", value);
}