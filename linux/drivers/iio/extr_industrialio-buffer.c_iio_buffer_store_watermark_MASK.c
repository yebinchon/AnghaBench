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
struct iio_dev {int /*<<< orphan*/  mlock; struct iio_buffer* buffer; } ;
struct iio_buffer {unsigned int length; unsigned int watermark; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct iio_buffer*) ; 
 int FUNC2 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					  struct device_attribute *attr,
					  const char *buf,
					  size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct iio_buffer *buffer = indio_dev->buffer;
	unsigned int val;
	int ret;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		return ret;
	if (!val)
		return -EINVAL;

	FUNC3(&indio_dev->mlock);

	if (val > buffer->length) {
		ret = -EINVAL;
		goto out;
	}

	if (FUNC1(indio_dev->buffer)) {
		ret = -EBUSY;
		goto out;
	}

	buffer->watermark = val;
out:
	FUNC4(&indio_dev->mlock);

	return ret ? ret : len;
}