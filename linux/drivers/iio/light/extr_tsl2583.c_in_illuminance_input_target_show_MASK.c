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
struct TYPE_2__ {int als_cal_target; } ;
struct tsl2583_chip {int /*<<< orphan*/  als_mutex; TYPE_1__ als_settings; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 struct tsl2583_chip* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
						struct device_attribute *attr,
						char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct tsl2583_chip *chip = FUNC1(indio_dev);
	int ret;

	FUNC2(&chip->als_mutex);
	ret = FUNC4(buf, "%d\n", chip->als_settings.als_cal_target);
	FUNC3(&chip->als_mutex);

	return ret;
}