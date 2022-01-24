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
struct lp8788_adc {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef  enum lp8788_adc_id { ____Placeholder_lp8788_adc_id } lp8788_adc_id ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 struct lp8788_adc* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct lp8788_adc*,int,int*) ; 
 int* lp8788_scale ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int *val, int *val2, long mask)
{
	struct lp8788_adc *adc = FUNC0(indio_dev);
	enum lp8788_adc_id id = chan->channel;
	int ret;

	FUNC2(&adc->lock);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC1(adc, id, val) ? -EIO : IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_SCALE:
		*val = lp8788_scale[id] / 1000000;
		*val2 = lp8788_scale[id] % 1000000;
		ret = IIO_VAL_INT_PLUS_MICRO;
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC3(&adc->lock);

	return ret;
}