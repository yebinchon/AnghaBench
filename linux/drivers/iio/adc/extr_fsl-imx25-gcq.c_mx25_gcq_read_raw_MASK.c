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
struct mx25_gcq_priv {int* channel_vref_mv; } ;
struct iio_dev {int /*<<< orphan*/  mlock; int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {size_t channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 struct mx25_gcq_priv* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_chan_spec const*,struct mx25_gcq_priv*,int*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan, int *val,
			     int *val2, long mask)
{
	struct mx25_gcq_priv *priv = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC1(&indio_dev->mlock);
		ret = FUNC3(&indio_dev->dev, chan, priv, val);
		FUNC2(&indio_dev->mlock);
		return ret;

	case IIO_CHAN_INFO_SCALE:
		*val = priv->channel_vref_mv[chan->channel];
		*val2 = 12;
		return IIO_VAL_FRACTIONAL_LOG2;

	default:
		return -EINVAL;
	}
}