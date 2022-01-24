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
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct hts221_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HTS221_SENSOR_H ; 
 int /*<<< orphan*/  HTS221_SENSOR_T ; 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 131 
#define  IIO_CHAN_INFO_SAMP_FREQ 130 
#define  IIO_HUMIDITYRELATIVE 129 
#define  IIO_TEMP 128 
 int FUNC0 (struct hts221_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct hts221_hw*,int) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct hts221_hw* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *iio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	struct hts221_hw *hw = FUNC4(iio_dev);
	int ret;

	ret = FUNC2(iio_dev);
	if (ret)
		return ret;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		ret = FUNC1(hw, val);
		break;
	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		switch (chan->type) {
		case IIO_HUMIDITYRELATIVE:
			ret = FUNC0(hw, HTS221_SENSOR_H, val);
			break;
		case IIO_TEMP:
			ret = FUNC0(hw, HTS221_SENSOR_T, val);
			break;
		default:
			ret = -EINVAL;
			break;
		}
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC3(iio_dev);

	return ret;
}