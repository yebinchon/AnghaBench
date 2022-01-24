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
struct iio_hrtimer_info {int /*<<< orphan*/  sampling_frequency; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct iio_hrtimer_info* FUNC0 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct iio_trigger* FUNC2 (struct device*) ; 

__attribute__((used)) static
ssize_t FUNC3(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct iio_trigger *trig = FUNC2(dev);
	struct iio_hrtimer_info *info = FUNC0(trig);

	return FUNC1(buf, PAGE_SIZE, "%lu\n", info->sampling_frequency);
}