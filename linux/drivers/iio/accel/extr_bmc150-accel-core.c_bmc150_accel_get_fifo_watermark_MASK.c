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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int watermark; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 struct bmc150_accel_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					       struct device_attribute *attr,
					       char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct bmc150_accel_data *data = FUNC1(indio_dev);
	int wm;

	FUNC2(&data->mutex);
	wm = data->watermark;
	FUNC3(&data->mutex);

	return FUNC4(buf, "%d\n", wm);
}