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
struct sun4i_gpadc_iio {unsigned int fifo_data_irq; int adc_data; int temp_data; int /*<<< orphan*/  mutex; int /*<<< orphan*/  completion; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct sun4i_gpadc_iio* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct iio_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev, int channel, int *val,
			    unsigned int irq)
{
	struct sun4i_gpadc_iio *info = FUNC2(indio_dev);
	int ret;

	FUNC4(&info->mutex);

	ret = FUNC8(indio_dev, channel, irq);
	if (ret)
		goto err;

	FUNC1(irq);

	/*
	 * The temperature sensor throws an interruption periodically (currently
	 * set at periods of ~0.6s in sun4i_gpadc_runtime_resume). A 1s delay
	 * makes sure an interruption occurs in normal conditions. If it doesn't
	 * occur, then there is a timeout.
	 */
	if (!FUNC9(&info->completion,
					 FUNC3(1000))) {
		ret = -ETIMEDOUT;
		goto err;
	}

	if (irq == info->fifo_data_irq)
		*val = info->adc_data;
	else
		*val = info->temp_data;

	ret = 0;
	FUNC6(indio_dev->dev.parent);

err:
	FUNC7(indio_dev->dev.parent);
	FUNC0(irq);
	FUNC5(&info->mutex);

	return ret;
}