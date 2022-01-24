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
struct sca3000_state {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 129 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 struct sca3000_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sca3000_state*,int) ; 
 int FUNC4 (struct sca3000_state*,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct sca3000_state *st = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		if (val2)
			return -EINVAL;
		FUNC1(&st->lock);
		ret = FUNC4(st, val);
		FUNC2(&st->lock);
		return ret;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		if (val2)
			return -EINVAL;
		FUNC1(&st->lock);
		ret = FUNC3(st, val);
		FUNC2(&st->lock);
		return ret;
	default:
		return -EINVAL;
	}

	return ret;
}