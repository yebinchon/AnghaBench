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
struct inv_mpu6050_state {int /*<<< orphan*/  lock; TYPE_1__* reg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel2; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  accl_offset; int /*<<< orphan*/  gyro_offset; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ACCEL 131 
#define  IIO_ANGL_VEL 130 
#define  IIO_CHAN_INFO_CALIBBIAS 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct inv_mpu6050_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct inv_mpu6050_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct inv_mpu6050_state*,int) ; 
 int FUNC5 (struct inv_mpu6050_state*,int) ; 
 int FUNC6 (struct inv_mpu6050_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
				 struct iio_chan_spec const *chan,
				 int val, int val2, long mask)
{
	struct inv_mpu6050_state  *st = FUNC2(indio_dev);
	int result;

	/*
	 * we should only update scale when the chip is disabled, i.e.
	 * not running
	 */
	result = FUNC0(indio_dev);
	if (result)
		return result;

	FUNC7(&st->lock);
	result = FUNC4(st, true);
	if (result)
		goto error_write_raw_unlock;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			result = FUNC6(st, val2);
			break;
		case IIO_ACCEL:
			result = FUNC5(st, val2);
			break;
		default:
			result = -EINVAL;
			break;
		}
		break;
	case IIO_CHAN_INFO_CALIBBIAS:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			result = FUNC3(st,
							st->reg->gyro_offset,
							chan->channel2, val);
			break;
		case IIO_ACCEL:
			result = FUNC3(st,
							st->reg->accl_offset,
							chan->channel2, val);
			break;
		default:
			result = -EINVAL;
			break;
		}
		break;
	default:
		result = -EINVAL;
		break;
	}

	result |= FUNC4(st, false);
error_write_raw_unlock:
	FUNC8(&st->lock);
	FUNC1(indio_dev);

	return result;
}