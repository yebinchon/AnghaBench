#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_sensor_data {TYPE_3__* sensor_settings; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_5__ {TYPE_1__* fs_avl; } ;
struct TYPE_6__ {TYPE_2__ fs; } ;
struct TYPE_4__ {scalar_t__ num; int gain; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int ST_SENSORS_FULLSCALE_AVL_MAX ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct st_sensor_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,scalar_t__,char*,int,int) ; 

ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	int i, len = 0, q, r;
	struct iio_dev *indio_dev = FUNC0(dev);
	struct st_sensor_data *sdata = FUNC1(indio_dev);

	FUNC2(&indio_dev->mlock);
	for (i = 0; i < ST_SENSORS_FULLSCALE_AVL_MAX; i++) {
		if (sdata->sensor_settings->fs.fs_avl[i].num == 0)
			break;

		q = sdata->sensor_settings->fs.fs_avl[i].gain / 1000000;
		r = sdata->sensor_settings->fs.fs_avl[i].gain % 1000000;

		len += FUNC4(buf + len, PAGE_SIZE - len, "%u.%06u ", q, r);
	}
	FUNC3(&indio_dev->mlock);
	buf[len - 1] = '\n';

	return len;
}