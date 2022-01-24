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
struct iio_device_config {int /*<<< orphan*/  scan_mask; } ;
struct iio_dev {int /*<<< orphan*/  buffer_list; } ;
struct iio_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*,struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*,struct iio_buffer*) ; 
 int FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*,struct iio_device_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iio_dev*,struct iio_buffer*,struct iio_buffer*,struct iio_device_config*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
		       struct iio_buffer *insert_buffer,
		       struct iio_buffer *remove_buffer)
{
	struct iio_device_config new_config;
	int ret;

	ret = FUNC7(indio_dev, insert_buffer, remove_buffer,
		&new_config);
	if (ret)
		return ret;

	if (insert_buffer) {
		ret = FUNC3(indio_dev, insert_buffer);
		if (ret)
			goto err_free_config;
	}

	ret = FUNC4(indio_dev);
	if (ret)
		goto err_deactivate_all;

	if (remove_buffer)
		FUNC1(remove_buffer);
	if (insert_buffer)
		FUNC0(indio_dev, insert_buffer);

	/* If no buffers in list, we are done */
	if (FUNC8(&indio_dev->buffer_list))
		return 0;

	ret = FUNC5(indio_dev, &new_config);
	if (ret)
		goto err_deactivate_all;

	return 0;

err_deactivate_all:
	/*
	 * We've already verified that the config is valid earlier. If things go
	 * wrong in either enable or disable the most likely reason is an IO
	 * error from the device. In this case there is no good recovery
	 * strategy. Just make sure to disable everything and leave the device
	 * in a sane state.  With a bit of luck the device might come back to
	 * life again later and userspace can try again.
	 */
	FUNC2(indio_dev);

err_free_config:
	FUNC6(indio_dev, new_config.scan_mask);
	return ret;
}