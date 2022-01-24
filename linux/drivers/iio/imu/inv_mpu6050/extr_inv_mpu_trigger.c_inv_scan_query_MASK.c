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
struct TYPE_2__ {int gyro_fifo_enable; int accl_fifo_enable; } ;
struct inv_mpu6050_state {TYPE_1__ chip_config; } ;
struct iio_dev {int /*<<< orphan*/  active_scan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  INV_MPU6050_SCAN_ACCL_X ; 
 int /*<<< orphan*/  INV_MPU6050_SCAN_ACCL_Y ; 
 int /*<<< orphan*/  INV_MPU6050_SCAN_ACCL_Z ; 
 int /*<<< orphan*/  INV_MPU6050_SCAN_GYRO_X ; 
 int /*<<< orphan*/  INV_MPU6050_SCAN_GYRO_Y ; 
 int /*<<< orphan*/  INV_MPU6050_SCAN_GYRO_Z ; 
 struct inv_mpu6050_state* FUNC0 (struct iio_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iio_dev *indio_dev)
{
	struct inv_mpu6050_state  *st = FUNC0(indio_dev);

	st->chip_config.gyro_fifo_enable =
		FUNC1(INV_MPU6050_SCAN_GYRO_X,
			 indio_dev->active_scan_mask) ||
		FUNC1(INV_MPU6050_SCAN_GYRO_Y,
			 indio_dev->active_scan_mask) ||
		FUNC1(INV_MPU6050_SCAN_GYRO_Z,
			 indio_dev->active_scan_mask);

	st->chip_config.accl_fifo_enable =
		FUNC1(INV_MPU6050_SCAN_ACCL_X,
			 indio_dev->active_scan_mask) ||
		FUNC1(INV_MPU6050_SCAN_ACCL_Y,
			 indio_dev->active_scan_mask) ||
		FUNC1(INV_MPU6050_SCAN_ACCL_Z,
			 indio_dev->active_scan_mask);
}