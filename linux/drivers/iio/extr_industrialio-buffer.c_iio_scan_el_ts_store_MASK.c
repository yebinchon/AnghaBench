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
struct iio_dev {int /*<<< orphan*/  mlock; TYPE_1__* buffer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int scan_timestamp; } ;

/* Variables and functions */
 int EBUSY ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf,
				    size_t len)
{
	int ret;
	struct iio_dev *indio_dev = FUNC0(dev);
	bool state;

	ret = FUNC4(buf, &state);
	if (ret < 0)
		return ret;

	FUNC2(&indio_dev->mlock);
	if (FUNC1(indio_dev->buffer)) {
		ret = -EBUSY;
		goto error_ret;
	}
	indio_dev->buffer->scan_timestamp = state;
error_ret:
	FUNC3(&indio_dev->mlock);

	return ret ? ret : len;
}