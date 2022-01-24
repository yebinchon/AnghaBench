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
struct hid_sensor_common {int /*<<< orphan*/  latency_ms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_sensor_common*) ; 
 int FUNC2 (struct hid_sensor_common*,int) ; 
 struct hid_sensor_common* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (char const*,int,int*,int*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					      struct device_attribute *attr,
					      const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct hid_sensor_common *attrb = FUNC3(indio_dev);
	int integer, fract, ret;
	int latency;

	ret = FUNC4(buf, 100000, &integer, &fract);
	if (ret)
		return ret;

	latency = integer * 1000 + fract / 1000;
	ret = FUNC2(attrb, latency);
	if (ret < 0)
		return len;

	attrb->latency_ms = FUNC1(attrb);

	return len;
}