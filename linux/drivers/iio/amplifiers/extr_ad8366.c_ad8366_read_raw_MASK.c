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
struct ad8366_state {int* ch; int /*<<< orphan*/  lock; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ID_AD8366 131 
#define  ID_ADA4961 130 
#define  ID_ADL5240 129 
#define  IIO_CHAN_INFO_HARDWAREGAIN 128 
 int IIO_VAL_INT_PLUS_MICRO_DB ; 
 struct ad8366_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	struct ad8366_state *st = FUNC0(indio_dev);
	int ret;
	int code, gain = 0;

	FUNC1(&st->lock);
	switch (m) {
	case IIO_CHAN_INFO_HARDWAREGAIN:
		code = st->ch[chan->channel];

		switch (st->type) {
		case ID_AD8366:
			gain = code * 253 + 4500;
			break;
		case ID_ADA4961:
			gain = 15000 - code * 1000;
			break;
		case ID_ADL5240:
			gain = 20000 - 31500 + code * 500;
			break;
		}

		/* Values in dB */
		*val = gain / 1000;
		*val2 = (gain % 1000) * 1000;

		ret = IIO_VAL_INT_PLUS_MICRO_DB;
		break;
	default:
		ret = -EINVAL;
	}
	FUNC2(&st->lock);

	return ret;
}