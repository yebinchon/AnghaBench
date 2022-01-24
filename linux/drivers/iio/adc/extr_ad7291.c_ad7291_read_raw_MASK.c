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
typedef  int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; int /*<<< orphan*/  channel; } ;
struct ad7291_chip_info {int command; int /*<<< orphan*/  reg; int /*<<< orphan*/  client; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int AD7291_AUTOCYCLE ; 
 int AD7291_BITS ; 
 int /*<<< orphan*/  AD7291_COMMAND ; 
 int /*<<< orphan*/  AD7291_T_AVERAGE ; 
 int /*<<< orphan*/  AD7291_T_SENSE ; 
 int AD7291_VALUE_MASK ; 
 int /*<<< orphan*/  AD7291_VOLTAGE ; 
 int AD7291_VOLTAGE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_AVERAGE_RAW 132 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_TEMP 129 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
#define  IIO_VOLTAGE 128 
 int FUNC1 (struct ad7291_chip_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad7291_chip_info* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long mask)
{
	int ret;
	struct ad7291_chip_info *chip = FUNC3(indio_dev);
	u16 regval;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		switch (chan->type) {
		case IIO_VOLTAGE:
			FUNC4(&chip->state_lock);
			/* If in autocycle mode drop through */
			if (chip->command & AD7291_AUTOCYCLE) {
				FUNC5(&chip->state_lock);
				return -EBUSY;
			}
			/* Enable this channel alone */
			regval = chip->command & (~AD7291_VOLTAGE_MASK);
			regval |= FUNC0(15 - chan->channel);
			ret = FUNC1(chip, AD7291_COMMAND, regval);
			if (ret < 0) {
				FUNC5(&chip->state_lock);
				return ret;
			}
			/* Read voltage */
			ret = FUNC2(chip->client,
							  AD7291_VOLTAGE);
			if (ret < 0) {
				FUNC5(&chip->state_lock);
				return ret;
			}
			*val = ret & AD7291_VALUE_MASK;
			FUNC5(&chip->state_lock);
			return IIO_VAL_INT;
		case IIO_TEMP:
			/* Assumes tsense bit of command register always set */
			ret = FUNC2(chip->client,
							  AD7291_T_SENSE);
			if (ret < 0)
				return ret;
			*val = FUNC7(ret, 11);
			return IIO_VAL_INT;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_AVERAGE_RAW:
		ret = FUNC2(chip->client,
						  AD7291_T_AVERAGE);
			if (ret < 0)
				return ret;
			*val = FUNC7(ret, 11);
			return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_VOLTAGE:
			if (chip->reg) {
				int vref;

				vref = FUNC6(chip->reg);
				if (vref < 0)
					return vref;
				*val = vref / 1000;
			} else {
				*val = 2500;
			}
			*val2 = AD7291_BITS;
			return IIO_VAL_FRACTIONAL_LOG2;
		case IIO_TEMP:
			/*
			 * One LSB of the ADC corresponds to 0.25 deg C.
			 * The temperature reading is in 12-bit twos
			 * complement format
			 */
			*val = 250;
			return IIO_VAL_INT;
		default:
			return -EINVAL;
		}
	default:
		return -EINVAL;
	}
}