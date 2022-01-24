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
struct inv_mpu6050_state {TYPE_1__* reg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int /*<<< orphan*/  channel2; } ;
struct TYPE_2__ {int /*<<< orphan*/  temperature; int /*<<< orphan*/  raw_accl; int /*<<< orphan*/  raw_gyro; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ACCEL 130 
#define  IIO_ANGL_VEL 129 
 int /*<<< orphan*/  IIO_MOD_X ; 
#define  IIO_TEMP 128 
 int /*<<< orphan*/  INV_MPU6050_BIT_PWR_ACCL_STBY ; 
 int /*<<< orphan*/  INV_MPU6050_BIT_PWR_GYRO_STBY ; 
 int /*<<< orphan*/  INV_MPU6050_SENSOR_UP_TIME ; 
 struct inv_mpu6050_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct inv_mpu6050_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct inv_mpu6050_state*,int) ; 
 int FUNC3 (struct inv_mpu6050_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
					 struct iio_chan_spec const *chan,
					 int *val)
{
	struct inv_mpu6050_state *st = FUNC0(indio_dev);
	int result;
	int ret;

	result = FUNC2(st, true);
	if (result)
		return result;

	switch (chan->type) {
	case IIO_ANGL_VEL:
		result = FUNC3(st, true,
				INV_MPU6050_BIT_PWR_GYRO_STBY);
		if (result)
			goto error_power_off;
		ret = FUNC1(st, st->reg->raw_gyro,
					      chan->channel2, val);
		result = FUNC3(st, false,
				INV_MPU6050_BIT_PWR_GYRO_STBY);
		if (result)
			goto error_power_off;
		break;
	case IIO_ACCEL:
		result = FUNC3(st, true,
				INV_MPU6050_BIT_PWR_ACCL_STBY);
		if (result)
			goto error_power_off;
		ret = FUNC1(st, st->reg->raw_accl,
					      chan->channel2, val);
		result = FUNC3(st, false,
				INV_MPU6050_BIT_PWR_ACCL_STBY);
		if (result)
			goto error_power_off;
		break;
	case IIO_TEMP:
		/* wait for stablization */
		FUNC4(INV_MPU6050_SENSOR_UP_TIME);
		ret = FUNC1(st, st->reg->temperature,
					      IIO_MOD_X, val);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	result = FUNC2(st, false);
	if (result)
		goto error_power_off;

	return ret;

error_power_off:
	FUNC2(st, false);
	return result;
}