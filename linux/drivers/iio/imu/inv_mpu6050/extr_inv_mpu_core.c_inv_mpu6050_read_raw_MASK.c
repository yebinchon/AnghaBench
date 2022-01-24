#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t fsr; size_t accl_fs; } ;
struct inv_mpu6050_state {int /*<<< orphan*/  lock; TYPE_2__* reg; int /*<<< orphan*/  chip_type; TYPE_1__ chip_config; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel2; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  accl_offset; int /*<<< orphan*/  gyro_offset; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ACCEL 134 
#define  IIO_ANGL_VEL 133 
#define  IIO_CHAN_INFO_CALIBBIAS 132 
#define  IIO_CHAN_INFO_OFFSET 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SCALE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 int /*<<< orphan*/  INV_ICM20602 ; 
 int INV_ICM20602_TEMP_OFFSET ; 
 int INV_ICM20602_TEMP_SCALE ; 
 int INV_MPU6050_TEMP_OFFSET ; 
 int INV_MPU6050_TEMP_SCALE ; 
 int* accel_scale ; 
 int* gyro_scale_6050 ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct inv_mpu6050_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int FUNC4 (struct inv_mpu6050_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct iio_dev *indio_dev,
		     struct iio_chan_spec const *chan,
		     int *val, int *val2, long mask)
{
	struct inv_mpu6050_state  *st = FUNC2(indio_dev);
	int ret = 0;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC0(indio_dev);
		if (ret)
			return ret;
		FUNC5(&st->lock);
		ret = FUNC3(indio_dev, chan, val);
		FUNC6(&st->lock);
		FUNC1(indio_dev);
		return ret;
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			FUNC5(&st->lock);
			*val  = 0;
			*val2 = gyro_scale_6050[st->chip_config.fsr];
			FUNC6(&st->lock);

			return IIO_VAL_INT_PLUS_NANO;
		case IIO_ACCEL:
			FUNC5(&st->lock);
			*val = 0;
			*val2 = accel_scale[st->chip_config.accl_fs];
			FUNC6(&st->lock);

			return IIO_VAL_INT_PLUS_MICRO;
		case IIO_TEMP:
			*val = 0;
			if (st->chip_type == INV_ICM20602)
				*val2 = INV_ICM20602_TEMP_SCALE;
			else
				*val2 = INV_MPU6050_TEMP_SCALE;

			return IIO_VAL_INT_PLUS_MICRO;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_OFFSET:
		switch (chan->type) {
		case IIO_TEMP:
			if (st->chip_type == INV_ICM20602)
				*val = INV_ICM20602_TEMP_OFFSET;
			else
				*val = INV_MPU6050_TEMP_OFFSET;

			return IIO_VAL_INT;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_CALIBBIAS:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			FUNC5(&st->lock);
			ret = FUNC4(st, st->reg->gyro_offset,
						chan->channel2, val);
			FUNC6(&st->lock);
			return IIO_VAL_INT;
		case IIO_ACCEL:
			FUNC5(&st->lock);
			ret = FUNC4(st, st->reg->accl_offset,
						chan->channel2, val);
			FUNC6(&st->lock);
			return IIO_VAL_INT;

		default:
			return -EINVAL;
		}
	default:
		return -EINVAL;
	}
}