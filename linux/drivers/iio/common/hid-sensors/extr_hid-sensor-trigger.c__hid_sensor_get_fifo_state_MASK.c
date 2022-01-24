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
struct iio_dev {int dummy; } ;
struct hid_sensor_common {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct hid_sensor_common*) ; 
 struct hid_sensor_common* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct hid_sensor_common *attrb = FUNC2(indio_dev);
	int latency;

	latency = FUNC1(attrb);
	if (latency < 0)
		return latency;

	return FUNC3(buf, "%d\n", !!latency);
}