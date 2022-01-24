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
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct fxas21002c_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  buffer; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CHANNEL_SCAN_MAX ; 
 int /*<<< orphan*/  FXAS21002C_REG_OUT_X_MSB ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct fxas21002c_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct fxas21002c_data *data = FUNC0(indio_dev);
	int ret;

	FUNC3(&data->lock);
	ret = FUNC5(data->regmap, FXAS21002C_REG_OUT_X_MSB,
			       data->buffer, CHANNEL_SCAN_MAX * sizeof(s16));
	if (ret < 0)
		goto out_unlock;

	FUNC1(indio_dev, data->buffer,
					   data->timestamp);

out_unlock:
	FUNC4(&data->lock);

	FUNC2(indio_dev->trig);

	return IRQ_HANDLED;
}