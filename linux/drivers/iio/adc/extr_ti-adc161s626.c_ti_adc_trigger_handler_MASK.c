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
struct ti_adc_data {int /*<<< orphan*/  buffer; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/ * channels; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct ti_adc_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ti_adc_data*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *private)
{
	struct iio_poll_func *pf = private;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ti_adc_data *data = FUNC1(indio_dev);
	int ret;

	ret = FUNC4(data, &indio_dev->channels[0],
				     (int *) &data->buffer);
	if (!ret)
		FUNC2(indio_dev,
					data->buffer,
					FUNC0(indio_dev));

	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}