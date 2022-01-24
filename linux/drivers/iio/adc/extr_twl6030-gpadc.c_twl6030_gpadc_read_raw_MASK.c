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
struct twl6030_gpadc_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_complete; int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int (* start_conversion ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int ETIMEDOUT ; 
#define  IIO_CHAN_INFO_PROCESSED 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct twl6030_gpadc_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct twl6030_gpadc_data*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct twl6030_gpadc_data*,int /*<<< orphan*/ ,int*) ; 
 long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
			     const struct iio_chan_spec *chan,
			     int *val, int *val2, long mask)
{
	struct twl6030_gpadc_data *gpadc = FUNC1(indio_dev);
	int ret;
	long timeout;

	FUNC3(&gpadc->lock);

	ret = gpadc->pdata->start_conversion(chan->channel);
	if (ret) {
		FUNC0(gpadc->dev, "failed to start conversion\n");
		goto err;
	}
	/* wait for conversion to complete */
	timeout = FUNC8(
				&gpadc->irq_complete, FUNC2(5000));
	if (timeout == 0) {
		ret = -ETIMEDOUT;
		goto err;
	} else if (timeout < 0) {
		ret = -EINTR;
		goto err;
	}

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC7(gpadc, chan->channel, val);
		ret = ret ? -EIO : IIO_VAL_INT;
		break;

	case IIO_CHAN_INFO_PROCESSED:
		ret = FUNC6(gpadc, chan->channel, val);
		ret = ret ? -EIO : IIO_VAL_INT;
		break;

	default:
		break;
	}
err:
	FUNC4(&gpadc->lock);

	return ret;
}