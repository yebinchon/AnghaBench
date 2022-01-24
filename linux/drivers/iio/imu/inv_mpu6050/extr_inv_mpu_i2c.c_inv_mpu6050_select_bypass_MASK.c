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
typedef  int /*<<< orphan*/  u32 ;
struct inv_mpu6050_state {int irq_mask; int /*<<< orphan*/  lock; TYPE_1__* reg; int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;
struct i2c_mux_core {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_pin_cfg; } ;

/* Variables and functions */
 int INV_MPU6050_BIT_BYPASS_EN ; 
 struct iio_dev* FUNC0 (struct i2c_mux_core*) ; 
 struct inv_mpu6050_state* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct inv_mpu6050_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_mux_core *muxc, u32 chan_id)
{
	struct iio_dev *indio_dev = FUNC0(muxc);
	struct inv_mpu6050_state *st = FUNC1(indio_dev);
	int ret;

	FUNC3(&st->lock);

	ret = FUNC2(st, true);
	if (ret)
		goto error_unlock;

	ret = FUNC5(st->map, st->reg->int_pin_cfg,
			   st->irq_mask | INV_MPU6050_BIT_BYPASS_EN);

error_unlock:
	FUNC4(&st->lock);

	return ret;
}