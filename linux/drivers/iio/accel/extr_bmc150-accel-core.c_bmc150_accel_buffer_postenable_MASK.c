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
struct bmc150_accel_data {int /*<<< orphan*/  mutex; scalar_t__ fifo_mode; int /*<<< orphan*/  watermark; } ;

/* Variables and functions */
 scalar_t__ BMC150_ACCEL_FIFO_MODE_FIFO ; 
 int /*<<< orphan*/  BMC150_ACCEL_INT_WATERMARK ; 
 scalar_t__ INDIO_BUFFER_TRIGGERED ; 
 int FUNC0 (struct bmc150_accel_data*) ; 
 int FUNC1 (struct bmc150_accel_data*,int /*<<< orphan*/ ,int) ; 
 struct bmc150_accel_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct bmc150_accel_data *data = FUNC2(indio_dev);
	int ret = 0;

	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED)
		return FUNC3(indio_dev);

	FUNC4(&data->mutex);

	if (!data->watermark)
		goto out;

	ret = FUNC1(data, BMC150_ACCEL_INT_WATERMARK,
					 true);
	if (ret)
		goto out;

	data->fifo_mode = BMC150_ACCEL_FIFO_MODE_FIFO;

	ret = FUNC0(data);
	if (ret) {
		data->fifo_mode = 0;
		FUNC1(data, BMC150_ACCEL_INT_WATERMARK,
					   false);
	}

out:
	FUNC5(&data->mutex);

	return ret;
}