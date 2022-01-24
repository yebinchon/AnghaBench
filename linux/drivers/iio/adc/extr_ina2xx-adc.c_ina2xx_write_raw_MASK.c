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
struct ina2xx_chip_info {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  regmap; TYPE_1__* config; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip_id; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_HARDWAREGAIN 130 
#define  IIO_CHAN_INFO_INT_TIME 129 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 128 
 int /*<<< orphan*/  INA2XX_CONFIG ; 
 int /*<<< orphan*/  INA2XX_SHUNT_VOLTAGE ; 
 scalar_t__ FUNC0 (struct iio_dev*) ; 
 struct ina2xx_chip_info* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct ina2xx_chip_info*,int,unsigned int*) ; 
 int FUNC3 (struct ina2xx_chip_info*,int,unsigned int*) ; 
 int FUNC4 (struct ina2xx_chip_info*,int,unsigned int*) ; 
 int FUNC5 (struct ina2xx_chip_info*,int,unsigned int*) ; 
 int /*<<< orphan*/  ina226 ; 
 int FUNC6 (struct ina2xx_chip_info*,int,unsigned int*) ; 
 int FUNC7 (struct ina2xx_chip_info*,int,unsigned int*) ; 
 int FUNC8 (struct ina2xx_chip_info*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	struct ina2xx_chip_info *chip = FUNC1(indio_dev);
	unsigned int config, tmp;
	int ret;

	if (FUNC0(indio_dev))
		return -EBUSY;

	FUNC9(&chip->state_lock);

	ret = FUNC11(chip->regmap, INA2XX_CONFIG, &config);
	if (ret)
		goto err;

	tmp = config;

	switch (mask) {
	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		ret = FUNC6(chip, val, &tmp);
		break;

	case IIO_CHAN_INFO_INT_TIME:
		if (chip->config->chip_id == ina226) {
			if (chan->address == INA2XX_SHUNT_VOLTAGE)
				ret = FUNC8(chip, val2,
								 &tmp);
			else
				ret = FUNC7(chip, val2,
							       &tmp);
		} else {
			if (chan->address == INA2XX_SHUNT_VOLTAGE)
				ret = FUNC3(chip, val2,
								 &tmp);
			else
				ret = FUNC2(chip, val2,
							       &tmp);
		}
		break;

	case IIO_CHAN_INFO_HARDWAREGAIN:
		if (chan->address == INA2XX_SHUNT_VOLTAGE)
			ret = FUNC5(chip, val * 1000 +
							 val2 / 1000, &tmp);
		else
			ret = FUNC4(chip, val, &tmp);
		break;

	default:
		ret = -EINVAL;
	}

	if (!ret && (tmp != config))
		ret = FUNC12(chip->regmap, INA2XX_CONFIG, tmp);
err:
	FUNC10(&chip->state_lock);

	return ret;
}