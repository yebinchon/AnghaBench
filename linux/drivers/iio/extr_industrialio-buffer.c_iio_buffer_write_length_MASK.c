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
struct iio_dev {int /*<<< orphan*/  mlock; struct iio_buffer* buffer; } ;
struct iio_buffer {unsigned int length; unsigned int watermark; TYPE_1__* access; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_length ) (struct iio_buffer*,unsigned int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct iio_buffer*) ; 
 int FUNC2 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_buffer*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct iio_buffer *buffer = indio_dev->buffer;
	unsigned int val;
	int ret;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		return ret;

	if (val == buffer->length)
		return len;

	FUNC3(&indio_dev->mlock);
	if (FUNC1(indio_dev->buffer)) {
		ret = -EBUSY;
	} else {
		buffer->access->set_length(buffer, val);
		ret = 0;
	}
	if (ret)
		goto out;
	if (buffer->length && buffer->length < buffer->watermark)
		buffer->watermark = buffer->length;
out:
	FUNC4(&indio_dev->mlock);

	return ret ? ret : len;
}