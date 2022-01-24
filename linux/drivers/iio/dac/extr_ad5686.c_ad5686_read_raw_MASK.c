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
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int /*<<< orphan*/  address; } ;
struct ad5686_state {int (* read ) (struct ad5686_state*,int /*<<< orphan*/ ) ;int vref_mv; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 struct ad5686_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ad5686_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	struct ad5686_state *st = FUNC1(indio_dev);
	int ret;

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		FUNC2(&indio_dev->mlock);
		ret = st->read(st, chan->address);
		FUNC3(&indio_dev->mlock);
		if (ret < 0)
			return ret;
		*val = (ret >> chan->scan_type.shift) &
			FUNC0(chan->scan_type.realbits - 1, 0);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = st->vref_mv;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	}
	return -EINVAL;
}