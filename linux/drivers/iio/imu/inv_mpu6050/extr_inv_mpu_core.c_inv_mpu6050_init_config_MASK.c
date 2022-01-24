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
typedef  int u8 ;
struct inv_mpu6050_state {int irq_mask; size_t chip_type; int /*<<< orphan*/  chip_period; int /*<<< orphan*/  chip_config; TYPE_1__* reg; int /*<<< orphan*/  map; } ;
struct inv_mpu6050_chip_config {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
struct TYPE_3__ {int /*<<< orphan*/  int_pin_cfg; int /*<<< orphan*/  accl_config; int /*<<< orphan*/  sample_rate_div; int /*<<< orphan*/  gyro_config; } ;

/* Variables and functions */
 int INV_MPU6050_ACCL_CONFIG_FSR_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INV_MPU6050_FILTER_20HZ ; 
 int INV_MPU6050_FSR_2000DPS ; 
 int INV_MPU6050_FS_02G ; 
 int INV_MPU6050_GYRO_CONFIG_FSR_SHIFT ; 
 int /*<<< orphan*/  INV_MPU6050_INIT_FIFO_RATE ; 
 int /*<<< orphan*/  NSEC_PER_MSEC ; 
 TYPE_2__* hw_info ; 
 struct inv_mpu6050_state* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct inv_mpu6050_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inv_mpu6050_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	int result;
	u8 d;
	struct inv_mpu6050_state *st = FUNC1(indio_dev);

	result = FUNC3(st, true);
	if (result)
		return result;
	d = (INV_MPU6050_FSR_2000DPS << INV_MPU6050_GYRO_CONFIG_FSR_SHIFT);
	result = FUNC5(st->map, st->reg->gyro_config, d);
	if (result)
		goto error_power_off;

	result = FUNC2(st, INV_MPU6050_FILTER_20HZ);
	if (result)
		goto error_power_off;

	d = FUNC0(INV_MPU6050_INIT_FIFO_RATE);
	result = FUNC5(st->map, st->reg->sample_rate_div, d);
	if (result)
		goto error_power_off;

	d = (INV_MPU6050_FS_02G << INV_MPU6050_ACCL_CONFIG_FSR_SHIFT);
	result = FUNC5(st->map, st->reg->accl_config, d);
	if (result)
		goto error_power_off;

	result = FUNC5(st->map, st->reg->int_pin_cfg, st->irq_mask);
	if (result)
		return result;

	FUNC4(&st->chip_config, hw_info[st->chip_type].config,
	       sizeof(struct inv_mpu6050_chip_config));

	/*
	 * Internal chip period is 1ms (1kHz).
	 * Let's use at the beginning the theorical value before measuring
	 * with interrupt timestamps.
	 */
	st->chip_period = NSEC_PER_MSEC;

	return FUNC3(st, false);

error_power_off:
	FUNC3(st, false);
	return result;
}