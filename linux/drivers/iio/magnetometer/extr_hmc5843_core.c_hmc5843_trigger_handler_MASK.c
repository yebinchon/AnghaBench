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
struct hmc5843_data {int /*<<< orphan*/  buffer; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  HMC5843_DATA_OUT_MSB_REGS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct hmc5843_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct hmc5843_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct hmc5843_data *data = FUNC2(indio_dev);
	int ret;

	FUNC5(&data->lock);
	ret = FUNC0(data);
	if (ret < 0) {
		FUNC6(&data->lock);
		goto done;
	}

	ret = FUNC7(data->regmap, HMC5843_DATA_OUT_MSB_REGS,
			       data->buffer, 3 * sizeof(__be16));

	FUNC6(&data->lock);
	if (ret < 0)
		goto done;

	FUNC3(indio_dev, data->buffer,
					   FUNC1(indio_dev));

done:
	FUNC4(indio_dev->trig);

	return IRQ_HANDLED;
}