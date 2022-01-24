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

/* Variables and functions */
 int /*<<< orphan*/  ad_sd_buffer_setup_ops ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  ad_sd_trigger_handler ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct iio_dev *indio_dev)
{
	int ret;

	ret = FUNC2(indio_dev, &iio_pollfunc_store_time,
			&ad_sd_trigger_handler, &ad_sd_buffer_setup_ops);
	if (ret)
		return ret;

	ret = FUNC0(indio_dev);
	if (ret) {
		FUNC1(indio_dev);
		return ret;
	}

	return 0;
}