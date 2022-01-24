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
struct iio_trigger {int dummy; } ;
struct iio_hrtimer_info {unsigned long sampling_frequency; unsigned long period; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long NSEC_PER_SEC ; 
 struct iio_hrtimer_info* FUNC0 (struct iio_trigger*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 struct iio_trigger* FUNC2 (struct device*) ; 

__attribute__((used)) static
ssize_t FUNC3(struct device *dev,
					     struct device_attribute *attr,
					     const char *buf, size_t len)
{
	struct iio_trigger *trig = FUNC2(dev);
	struct iio_hrtimer_info *info = FUNC0(trig);
	unsigned long val;
	int ret;

	ret = FUNC1(buf, 10, &val);
	if (ret)
		return ret;

	if (!val || val > NSEC_PER_SEC)
		return -EINVAL;

	info->sampling_frequency = val;
	info->period = NSEC_PER_SEC / val;

	return len;
}