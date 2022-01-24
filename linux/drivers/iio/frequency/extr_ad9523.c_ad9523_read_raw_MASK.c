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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad9523_state {int* vco_out_freq; size_t* vco_out_map; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int AD9523_CLK_DIST_PWR_DOWN_EN ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_FREQUENCY 130 
#define  IIO_CHAN_INFO_PHASE 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC3 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 struct ad9523_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	struct ad9523_state *st = FUNC4(indio_dev);
	unsigned int code;
	int ret;

	FUNC5(&st->lock);
	ret = FUNC3(indio_dev, FUNC0(chan->channel));
	FUNC6(&st->lock);

	if (ret < 0)
		return ret;

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		*val = !(ret & AD9523_CLK_DIST_PWR_DOWN_EN);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_FREQUENCY:
		*val = st->vco_out_freq[st->vco_out_map[chan->channel]] /
			FUNC2(ret);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_PHASE:
		code = (FUNC1(ret) * 3141592) /
			FUNC2(ret);
		*val = code / 1000000;
		*val2 = code % 1000000;
		return IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}
}