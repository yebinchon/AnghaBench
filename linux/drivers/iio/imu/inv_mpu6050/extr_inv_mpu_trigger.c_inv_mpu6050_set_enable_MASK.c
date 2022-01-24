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
struct TYPE_4__ {scalar_t__ gyro_fifo_enable; scalar_t__ accl_fifo_enable; int /*<<< orphan*/  user_ctrl; } ;
struct inv_mpu6050_state {int skip_samples; TYPE_2__ chip_config; TYPE_1__* reg; int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  user_ctrl; int /*<<< orphan*/  int_enable; int /*<<< orphan*/  fifo_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  INV_MPU6050_BIT_PWR_ACCL_STBY ; 
 int /*<<< orphan*/  INV_MPU6050_BIT_PWR_GYRO_STBY ; 
 struct inv_mpu6050_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct inv_mpu6050_state*,int) ; 
 int FUNC2 (struct inv_mpu6050_state*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev, bool enable)
{
	struct inv_mpu6050_state *st = FUNC0(indio_dev);
	int result;

	if (enable) {
		result = FUNC1(st, true);
		if (result)
			return result;
		FUNC4(indio_dev);
		st->skip_samples = 0;
		if (st->chip_config.gyro_fifo_enable) {
			result = FUNC2(st, true,
					INV_MPU6050_BIT_PWR_GYRO_STBY);
			if (result)
				goto error_power_off;
			/* gyro first sample is out of specs, skip it */
			st->skip_samples = 1;
		}
		if (st->chip_config.accl_fifo_enable) {
			result = FUNC2(st, true,
					INV_MPU6050_BIT_PWR_ACCL_STBY);
			if (result)
				goto error_gyro_off;
		}
		result = FUNC3(indio_dev);
		if (result)
			goto error_accl_off;
	} else {
		result = FUNC5(st->map, st->reg->fifo_en, 0);
		if (result)
			goto error_accl_off;

		result = FUNC5(st->map, st->reg->int_enable, 0);
		if (result)
			goto error_accl_off;

		result = FUNC5(st->map, st->reg->user_ctrl,
				      st->chip_config.user_ctrl);
		if (result)
			goto error_accl_off;

		result = FUNC2(st, false,
					INV_MPU6050_BIT_PWR_ACCL_STBY);
		if (result)
			goto error_accl_off;

		result = FUNC2(st, false,
					INV_MPU6050_BIT_PWR_GYRO_STBY);
		if (result)
			goto error_gyro_off;

		result = FUNC1(st, false);
		if (result)
			goto error_power_off;
	}

	return 0;

error_accl_off:
	if (st->chip_config.accl_fifo_enable)
		FUNC2(st, false,
					  INV_MPU6050_BIT_PWR_ACCL_STBY);
error_gyro_off:
	if (st->chip_config.gyro_fifo_enable)
		FUNC2(st, false,
					  INV_MPU6050_BIT_PWR_GYRO_STBY);
error_power_off:
	FUNC1(st, false);
	return result;
}