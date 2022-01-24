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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ divider; } ;
struct inv_mpu6050_state {int /*<<< orphan*/  lock; TYPE_2__ chip_config; TYPE_1__* reg; int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  sample_rate_div; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int INV_MPU6050_MAX_FIFO_RATE ; 
 int INV_MPU6050_MIN_FIFO_RATE ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct inv_mpu6050_state* FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct inv_mpu6050_state*,int) ; 
 int FUNC7 (struct inv_mpu6050_state*,int) ; 
 scalar_t__ FUNC8 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	int fifo_rate;
	u8 d;
	int result;
	struct iio_dev *indio_dev = FUNC2(dev);
	struct inv_mpu6050_state *st = FUNC5(indio_dev);

	if (FUNC8(buf, 10, &fifo_rate))
		return -EINVAL;
	if (fifo_rate < INV_MPU6050_MIN_FIFO_RATE ||
	    fifo_rate > INV_MPU6050_MAX_FIFO_RATE)
		return -EINVAL;

	result = FUNC3(indio_dev);
	if (result)
		return result;

	/* compute the chip sample rate divider */
	d = FUNC1(fifo_rate);
	/* compute back the fifo rate to handle truncation cases */
	fifo_rate = FUNC0(d);

	FUNC9(&st->lock);
	if (d == st->chip_config.divider) {
		result = 0;
		goto fifo_rate_fail_unlock;
	}
	result = FUNC7(st, true);
	if (result)
		goto fifo_rate_fail_unlock;

	result = FUNC11(st->map, st->reg->sample_rate_div, d);
	if (result)
		goto fifo_rate_fail_power_off;
	st->chip_config.divider = d;

	result = FUNC6(st, fifo_rate);
	if (result)
		goto fifo_rate_fail_power_off;

fifo_rate_fail_power_off:
	result |= FUNC7(st, false);
fifo_rate_fail_unlock:
	FUNC10(&st->lock);
	FUNC4(indio_dev);
	if (result)
		return result;

	return count;
}