#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sensor_device_attribute_2 {int nr; int index; } ;
struct f71805f_data {TYPE_1__* auto_points; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/ * fan; } ;

/* Variables and functions */
 struct f71805f_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				       struct device_attribute *devattr,
				       char *buf)
{
	struct f71805f_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *attr = FUNC3(devattr);
	int pwmnr = attr->nr;
	int apnr = attr->index;

	return FUNC2(buf, "%ld\n",
		       FUNC1(data->auto_points[pwmnr].fan[apnr]));
}