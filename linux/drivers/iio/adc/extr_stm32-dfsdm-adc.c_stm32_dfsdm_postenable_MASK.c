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
struct iio_dev {scalar_t__ currentmode; } ;

/* Variables and functions */
 scalar_t__ INDIO_BUFFER_TRIGGERED ; 
 int FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	int ret;

	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
		ret = FUNC1(indio_dev);
		if (ret < 0)
			return ret;
	}

	ret = FUNC0(indio_dev);
	if (ret < 0)
		goto err_predisable;

	return 0;

err_predisable:
	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED)
		FUNC2(indio_dev);

	return ret;
}