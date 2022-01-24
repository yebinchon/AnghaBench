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
typedef  int /*<<< orphan*/  u8 ;
struct pa12203001_data {int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_LIGHT 129 
#define  IIO_PROXIMITY 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 unsigned int PA12203001_AFSR_MASK ; 
 int /*<<< orphan*/  PA12203001_ALS_EN_MASK ; 
 int /*<<< orphan*/  PA12203001_PX_EN_MASK ; 
 int /*<<< orphan*/  PA12203001_REG_ADL ; 
 int /*<<< orphan*/  PA12203001_REG_CFG0 ; 
 int /*<<< orphan*/  PA12203001_REG_PDH ; 
 struct pa12203001_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int* pa12203001_scales ; 
 int FUNC2 (struct pa12203001_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan, int *val,
			       int *val2, long mask)
{
	struct pa12203001_data *data = FUNC0(indio_dev);
	int ret;
	u8 dev_mask;
	unsigned int reg_byte;
	__le16 reg_word;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		switch (chan->type) {
		case IIO_LIGHT:
			dev_mask = PA12203001_ALS_EN_MASK;
			ret = FUNC2(data, true, dev_mask);
			if (ret < 0)
				return ret;
			/*
			 * ALS ADC value is stored in registers
			 * PA12203001_REG_ADL and in PA12203001_REG_ADL + 1.
			 */
			ret = FUNC3(data->map, PA12203001_REG_ADL,
					       &reg_word, 2);
			if (ret < 0)
				goto reg_err;

			*val = FUNC1(reg_word);
			ret = FUNC2(data, false, dev_mask);
			if (ret < 0)
				return ret;
			break;
		case IIO_PROXIMITY:
			dev_mask = PA12203001_PX_EN_MASK;
			ret = FUNC2(data, true, dev_mask);
			if (ret < 0)
				return ret;
			ret = FUNC4(data->map, PA12203001_REG_PDH,
					  &reg_byte);
			if (ret < 0)
				goto reg_err;

			*val = reg_byte;
			ret = FUNC2(data, false, dev_mask);
			if (ret < 0)
				return ret;
			break;
		default:
			return -EINVAL;
		}
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC4(data->map, PA12203001_REG_CFG0, &reg_byte);
		if (ret < 0)
			return ret;
		*val = 0;
		reg_byte = (reg_byte & PA12203001_AFSR_MASK);
		*val2 = pa12203001_scales[reg_byte >> 4];
		return IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}

reg_err:
	FUNC2(data, false, dev_mask);
	return ret;
}