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
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int /*<<< orphan*/  address; } ;
struct ad5380_state {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 130 
#define  IIO_CHAN_INFO_CALIBSCALE 129 
#define  IIO_CHAN_INFO_RAW 128 
 int /*<<< orphan*/  FUNC1 (struct iio_chan_spec const*,long) ; 
 struct ad5380_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int val, int val2, long info)
{
	const unsigned int max_val = (1 << chan->scan_type.realbits);
	struct ad5380_state *st = FUNC2(indio_dev);

	switch (info) {
	case IIO_CHAN_INFO_RAW:
	case IIO_CHAN_INFO_CALIBSCALE:
		if (val >= max_val || val < 0)
			return -EINVAL;

		return FUNC3(st->regmap,
			FUNC1(chan, info),
			val << chan->scan_type.shift);
	case IIO_CHAN_INFO_CALIBBIAS:
		val += (1 << chan->scan_type.realbits) / 2;
		if (val >= max_val || val < 0)
			return -EINVAL;

		return FUNC3(st->regmap,
			FUNC0(chan->address),
			val << chan->scan_type.shift);
	default:
		break;
	}
	return -EINVAL;
}