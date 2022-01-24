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
struct iio_dev {int /*<<< orphan*/  mlock; int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
struct axp288_adc_info {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP288_ADC_TS_CURRENT_ON ; 
 int /*<<< orphan*/  AXP288_ADC_TS_CURRENT_ON_ONDEMAND ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axp288_adc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct axp288_adc_info* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int *val, int *val2, long mask)
{
	int ret;
	struct axp288_adc_info *info = FUNC3(indio_dev);

	FUNC4(&indio_dev->mlock);
	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (FUNC1(info, AXP288_ADC_TS_CURRENT_ON_ONDEMAND,
					chan->address)) {
			FUNC2(&indio_dev->dev, "GPADC mode\n");
			ret = -EINVAL;
			break;
		}
		ret = FUNC0(val, chan->address, info->regmap);
		if (FUNC1(info, AXP288_ADC_TS_CURRENT_ON,
						chan->address))
			FUNC2(&indio_dev->dev, "TS pin restore\n");
		break;
	default:
		ret = -EINVAL;
	}
	FUNC5(&indio_dev->mlock);

	return ret;
}