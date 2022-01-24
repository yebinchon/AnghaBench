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
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct bmc150_accel_data {int /*<<< orphan*/  buffer; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AXIS_MAX ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_XOUT_L ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct bmc150_accel_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct bmc150_accel_data *data = FUNC0(indio_dev);
	int ret;

	FUNC3(&data->mutex);
	ret = FUNC5(data->regmap, BMC150_ACCEL_REG_XOUT_L,
			       data->buffer, AXIS_MAX * 2);
	FUNC4(&data->mutex);
	if (ret < 0)
		goto err_read;

	FUNC1(indio_dev, data->buffer,
					   pf->timestamp);
err_read:
	FUNC2(indio_dev->trig);

	return IRQ_HANDLED;
}