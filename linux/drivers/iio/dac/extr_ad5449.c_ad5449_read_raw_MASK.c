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
struct regulator_bulk_data {int /*<<< orphan*/  consumer; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {size_t address; size_t channel; TYPE_1__ scan_type; } ;
struct ad5449 {int* dac_cache; struct regulator_bulk_data* vref_reg; int /*<<< orphan*/  has_sdo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int*) ; 
 struct ad5449* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
	struct ad5449 *st = FUNC2(indio_dev);
	struct regulator_bulk_data *reg;
	int scale_uv;
	int ret;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		if (st->has_sdo) {
			ret = FUNC1(indio_dev,
				FUNC0(chan->address), val);
			if (ret)
				return ret;
			*val &= 0xfff;
		} else {
			*val = st->dac_cache[chan->address];
		}

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		reg = &st->vref_reg[chan->channel];
		scale_uv = FUNC3(reg->consumer);
		if (scale_uv < 0)
			return scale_uv;

		*val = scale_uv / 1000;
		*val2 = chan->scan_type.realbits;

		return IIO_VAL_FRACTIONAL_LOG2;
	default:
		break;
	}

	return -EINVAL;
}