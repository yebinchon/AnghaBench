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
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {scalar_t__* energy; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct aem_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long long) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC5 (struct aem_data*,size_t) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *devattr,
			       char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct aem_data *a = FUNC0(dev);
	FUNC1(&a->lock);
	FUNC5(a, attr->index);
	FUNC2(&a->lock);

	return FUNC3(buf, "%llu\n",
			(unsigned long long)a->energy[attr->index] * 1000);
}