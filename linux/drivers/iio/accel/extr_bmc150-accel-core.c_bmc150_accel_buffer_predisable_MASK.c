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
struct bmc150_accel_data {int /*<<< orphan*/  mutex; scalar_t__ fifo_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_ACCEL_FIFO_LENGTH ; 
 int /*<<< orphan*/  BMC150_ACCEL_INT_WATERMARK ; 
 scalar_t__ INDIO_BUFFER_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bmc150_accel_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct bmc150_accel_data*,int /*<<< orphan*/ ,int) ; 
 struct bmc150_accel_data* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct bmc150_accel_data *data = FUNC3(indio_dev);

	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED)
		return FUNC4(indio_dev);

	FUNC5(&data->mutex);

	if (!data->fifo_mode)
		goto out;

	FUNC2(data, BMC150_ACCEL_INT_WATERMARK, false);
	FUNC0(indio_dev, BMC150_ACCEL_FIFO_LENGTH, false);
	data->fifo_mode = 0;
	FUNC1(data);

out:
	FUNC6(&data->mutex);

	return 0;
}