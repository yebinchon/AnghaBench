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
struct bmc150_accel_data {unsigned int watermark; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned int BMC150_ACCEL_FIFO_LENGTH ; 
 struct bmc150_accel_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, unsigned val)
{
	struct bmc150_accel_data *data = FUNC0(indio_dev);

	if (val > BMC150_ACCEL_FIFO_LENGTH)
		val = BMC150_ACCEL_FIFO_LENGTH;

	FUNC1(&data->mutex);
	data->watermark = val;
	FUNC2(&data->mutex);

	return 0;
}