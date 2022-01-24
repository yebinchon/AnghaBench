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
struct iio_hwmon_state {struct iio_channel* channels; } ;
struct iio_channel {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int IIO_POWER ; 
 struct iio_hwmon_state* FUNC0 (struct device*) ; 
 int FUNC1 (struct iio_channel*,int*) ; 
 int FUNC2 (struct iio_channel*,int*) ; 
 int FUNC3 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *attr,
				  char *buf)
{
	int result;
	int ret;
	struct sensor_device_attribute *sattr = FUNC4(attr);
	struct iio_hwmon_state *state = FUNC0(dev);
	struct iio_channel *chan = &state->channels[sattr->index];
	enum iio_chan_type type;

	ret = FUNC2(chan, &result);
	if (ret < 0)
		return ret;

	ret = FUNC1(chan, &type);
	if (ret < 0)
		return ret;

	if (type == IIO_POWER)
		result *= 1000; /* mili-Watts to micro-Watts conversion */

	return FUNC3(buf, "%d\n", result);
}