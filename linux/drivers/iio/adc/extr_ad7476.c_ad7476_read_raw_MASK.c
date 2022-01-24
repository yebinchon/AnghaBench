#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct TYPE_8__ {int realbits; } ;
struct iio_chan_spec {TYPE_4__ scan_type; } ;
struct ad7476_state {TYPE_3__* chip_info; int /*<<< orphan*/  reg; } ;
struct TYPE_7__ {int int_vref_uv; TYPE_2__* channel; } ;
struct TYPE_5__ {int shift; int /*<<< orphan*/  realbits; } ;
struct TYPE_6__ {TYPE_1__ scan_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC1 (struct ad7476_state*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ad7476_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	int ret;
	struct ad7476_state *st = FUNC4(indio_dev);
	int scale_uv;

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC2(indio_dev);
		if (ret)
			return ret;
		ret = FUNC1(st);
		FUNC3(indio_dev);

		if (ret < 0)
			return ret;
		*val = (ret >> st->chip_info->channel[0].scan_type.shift) &
			FUNC0(st->chip_info->channel[0].scan_type.realbits - 1, 0);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		if (!st->chip_info->int_vref_uv) {
			scale_uv = FUNC5(st->reg);
			if (scale_uv < 0)
				return scale_uv;
		} else {
			scale_uv = st->chip_info->int_vref_uv;
		}
		*val = scale_uv / 1000;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	}
	return -EINVAL;
}