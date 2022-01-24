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
struct TYPE_3__ {int /*<<< orphan*/  user_ctrl; } ;
struct inv_mpu6050_state {TYPE_1__ chip_config; TYPE_2__* reg; int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ user_ctrl; scalar_t__ i2c_if; } ;

/* Variables and functions */
 int /*<<< orphan*/  INV_ICM20602_BIT_I2C_IF_DIS ; 
 int /*<<< orphan*/  INV_MPU6050_BIT_I2C_IF_DIS ; 
 struct inv_mpu6050_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct inv_mpu6050_state*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct inv_mpu6050_state *st = FUNC0(indio_dev);
	int ret = 0;

	ret = FUNC1(st, true);
	if (ret)
		return ret;

	if (st->reg->i2c_if) {
		ret = FUNC2(st->map, st->reg->i2c_if,
				   INV_ICM20602_BIT_I2C_IF_DIS);
	} else {
		st->chip_config.user_ctrl |= INV_MPU6050_BIT_I2C_IF_DIS;
		ret = FUNC2(st->map, st->reg->user_ctrl,
				   st->chip_config.user_ctrl);
	}
	if (ret) {
		FUNC1(st, false);
		return ret;
	}

	return FUNC1(st, false);
}