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
struct ltc1660_priv {int* value; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int /*<<< orphan*/  realbits; } ;
struct iio_chan_spec {size_t channel; TYPE_1__ scan_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IIO_CHAN_INFO_RAW 128 
 struct ltc1660_priv* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
		struct iio_chan_spec const *chan,
		int val,
		int val2,
		long mask)
{
	struct ltc1660_priv *priv = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (val2 != 0)
			return -EINVAL;

		if (val < 0 || val > FUNC0(chan->scan_type.realbits - 1, 0))
			return -EINVAL;

		ret = FUNC2(priv->regmap, chan->channel,
					(val << chan->scan_type.shift));
		if (!ret)
			priv->value[chan->channel] = val;

		return ret;
	default:
		return -EINVAL;
	}
}