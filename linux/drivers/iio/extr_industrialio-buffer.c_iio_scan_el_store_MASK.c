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
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int /*<<< orphan*/  mlock; struct iio_buffer* buffer; } ;
struct iio_buffer {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct iio_buffer*) ; 
 int FUNC2 (struct iio_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iio_dev*,struct iio_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iio_dev*,struct iio_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int*) ; 
 struct iio_dev_attr* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf,
				 size_t len)
{
	int ret;
	bool state;
	struct iio_dev *indio_dev = FUNC0(dev);
	struct iio_buffer *buffer = indio_dev->buffer;
	struct iio_dev_attr *this_attr = FUNC8(attr);

	ret = FUNC7(buf, &state);
	if (ret < 0)
		return ret;
	FUNC5(&indio_dev->mlock);
	if (FUNC1(indio_dev->buffer)) {
		ret = -EBUSY;
		goto error_ret;
	}
	ret = FUNC3(indio_dev, buffer, this_attr->address);
	if (ret < 0)
		goto error_ret;
	if (!state && ret) {
		ret = FUNC2(buffer, this_attr->address);
		if (ret)
			goto error_ret;
	} else if (state && !ret) {
		ret = FUNC4(indio_dev, buffer, this_attr->address);
		if (ret)
			goto error_ret;
	}

error_ret:
	FUNC6(&indio_dev->mlock);

	return ret < 0 ? ret : len;

}