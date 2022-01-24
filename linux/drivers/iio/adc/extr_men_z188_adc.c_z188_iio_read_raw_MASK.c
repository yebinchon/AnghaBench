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
typedef  int /*<<< orphan*/  u16 ;
struct z188_adc {int /*<<< orphan*/  base; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {int channel; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct z188_adc* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *iio_dev,
			struct iio_chan_spec const *chan,
			int *val,
			int *val2,
			long info)
{
	struct z188_adc *adc = FUNC3(iio_dev);
	int ret;
	u16 tmp;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		tmp = FUNC4(adc->base + chan->channel * 4);

		if (FUNC1(tmp)) {
			FUNC2(&iio_dev->dev,
				"Oversampling error on ADC channel %d\n",
				chan->channel);
			return -EIO;
		}
		*val = FUNC0(tmp);
		ret = IIO_VAL_INT;
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}