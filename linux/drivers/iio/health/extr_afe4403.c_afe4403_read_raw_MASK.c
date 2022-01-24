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
struct iio_chan_spec {size_t address; int type; } ;
struct afe4403_data {int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_CURRENT 129 
#define  IIO_INTENSITY 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 unsigned int* afe4403_channel_leds ; 
 unsigned int* afe4403_channel_values ; 
 int FUNC0 (struct afe4403_data*,unsigned int,int*) ; 
 struct afe4403_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct afe4403_data *afe = FUNC1(indio_dev);
	unsigned int reg = afe4403_channel_values[chan->address];
	unsigned int field = afe4403_channel_leds[chan->address];
	int ret;

	switch (chan->type) {
	case IIO_INTENSITY:
		switch (mask) {
		case IIO_CHAN_INFO_RAW:
			ret = FUNC0(afe, reg, val);
			if (ret)
				return ret;
			return IIO_VAL_INT;
		}
		break;
	case IIO_CURRENT:
		switch (mask) {
		case IIO_CHAN_INFO_RAW:
			ret = FUNC2(afe->fields[field], val);
			if (ret)
				return ret;
			return IIO_VAL_INT;
		case IIO_CHAN_INFO_SCALE:
			*val = 0;
			*val2 = 800000;
			return IIO_VAL_INT_PLUS_MICRO;
		}
		break;
	default:
		break;
	}

	return -EINVAL;
}