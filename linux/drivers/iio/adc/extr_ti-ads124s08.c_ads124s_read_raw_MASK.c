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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct ads124s_private {int /*<<< orphan*/  lock; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADS124S08_INPUT_MUX ; 
 int /*<<< orphan*/  ADS124S08_START_CONV ; 
 int /*<<< orphan*/  ADS124S08_STOP_CONV ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct ads124s_private* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long m)
{
	struct ads124s_private *priv = FUNC4(indio_dev);
	int ret;

	FUNC5(&priv->lock);
	switch (m) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC2(indio_dev, ADS124S08_INPUT_MUX,
					chan->channel);
		if (ret) {
			FUNC3(&priv->spi->dev, "Set ADC CH failed\n");
			goto out;
		}

		ret = FUNC1(indio_dev, ADS124S08_START_CONV);
		if (ret) {
			FUNC3(&priv->spi->dev, "Start conversions failed\n");
			goto out;
		}

		ret = FUNC0(indio_dev, chan->channel);
		if (ret < 0) {
			FUNC3(&priv->spi->dev, "Read ADC failed\n");
			goto out;
		}

		*val = ret;

		ret = FUNC1(indio_dev, ADS124S08_STOP_CONV);
		if (ret) {
			FUNC3(&priv->spi->dev, "Stop conversions failed\n");
			goto out;
		}

		ret = IIO_VAL_INT;
		break;
	default:
		ret = -EINVAL;
		break;
	}
out:
	FUNC6(&priv->lock);
	return ret;
}