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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {size_t scan_index; } ;
struct adis16400_state {int filt_int; TYPE_1__* variant; int /*<<< orphan*/  adis; } ;
struct TYPE_2__ {int (* get_freq ) (struct adis16400_state*) ;int (* set_freq ) (struct adis16400_state*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 130 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 129 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 int /*<<< orphan*/ * adis16400_addresses ; 
 int FUNC0 (struct iio_dev*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adis16400_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct adis16400_state*) ; 
 int FUNC6 (struct adis16400_state*,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int val, int val2, long info)
{
	struct adis16400_state *st = FUNC2(indio_dev);
	int ret, sps;

	switch (info) {
	case IIO_CHAN_INFO_CALIBBIAS:
		FUNC3(&indio_dev->mlock);
		ret = FUNC1(&st->adis,
				adis16400_addresses[chan->scan_index], val);
		FUNC4(&indio_dev->mlock);
		return ret;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		/*
		 * Need to cache values so we can update if the frequency
		 * changes.
		 */
		FUNC3(&indio_dev->mlock);
		st->filt_int = val;
		/* Work out update to current value */
		sps = st->variant->get_freq(st);
		if (sps < 0) {
			FUNC4(&indio_dev->mlock);
			return sps;
		}

		ret = FUNC0(indio_dev, sps,
			val * 1000 + val2 / 1000);
		FUNC4(&indio_dev->mlock);
		return ret;
	case IIO_CHAN_INFO_SAMP_FREQ:
		sps = val * 1000 + val2 / 1000;

		if (sps <= 0)
			return -EINVAL;

		FUNC3(&indio_dev->mlock);
		ret = st->variant->set_freq(st, sps);
		FUNC4(&indio_dev->mlock);
		return ret;
	default:
		return -EINVAL;
	}
}