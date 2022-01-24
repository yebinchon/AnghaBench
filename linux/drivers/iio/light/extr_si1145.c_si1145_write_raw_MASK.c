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
typedef  int u8 ;
struct si1145_data {int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; int /*<<< orphan*/  type; int /*<<< orphan*/  channel2; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 132 
#define  IIO_CHAN_INFO_SAMP_FREQ 131 
#define  IIO_CHAN_INFO_SCALE 130 
 int /*<<< orphan*/  IIO_CURRENT ; 
#define  IIO_INTENSITY 129 
 int /*<<< orphan*/  IIO_MOD_LIGHT_IR ; 
#define  IIO_PROXIMITY 128 
 int SI1145_PARAM_ALSIR_ADC_COUNTER ; 
 int SI1145_PARAM_ALSIR_ADC_GAIN ; 
 int SI1145_PARAM_ALSVIS_ADC_COUNTER ; 
 int SI1145_PARAM_ALSVIS_ADC_GAIN ; 
 int SI1145_PARAM_PS_ADC_COUNTER ; 
 int SI1145_PARAM_PS_ADC_GAIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct si1145_data* FUNC6 (struct iio_dev*) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (struct si1145_data*,int,int) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (struct si1145_data*,int) ; 

__attribute__((used)) static int FUNC11(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan,
			       int val, int val2, long mask)
{
	struct si1145_data *data = FUNC6(indio_dev);
	u8 reg1, reg2, shift;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_PROXIMITY:
			val = FUNC9(val, val2);
			if (val < 0)
				return val;
			reg1 = SI1145_PARAM_PS_ADC_GAIN;
			reg2 = SI1145_PARAM_PS_ADC_COUNTER;
			break;
		case IIO_INTENSITY:
			val = FUNC7(val, val2);
			if (val < 0)
				return val;
			if (chan->channel2 == IIO_MOD_LIGHT_IR) {
				reg1 = SI1145_PARAM_ALSIR_ADC_GAIN;
				reg2 = SI1145_PARAM_ALSIR_ADC_COUNTER;
			} else {
				reg1 = SI1145_PARAM_ALSVIS_ADC_GAIN;
				reg2 = SI1145_PARAM_ALSVIS_ADC_COUNTER;
			}
			break;
		default:
			return -EINVAL;
		}

		ret = FUNC4(indio_dev);
		if (ret)
			return ret;

		ret = FUNC8(data, reg1, val);
		if (ret < 0) {
			FUNC5(indio_dev);
			return ret;
		}
		/* Set recovery period to one's complement of gain */
		ret = FUNC8(data, reg2, (~val & 0x07) << 4);
		FUNC5(indio_dev);
		return ret;
	case IIO_CHAN_INFO_RAW:
		if (chan->type != IIO_CURRENT)
			return -EINVAL;

		if (val < 0 || val > 15 || val2 != 0)
			return -EINVAL;

		reg1 = FUNC0(chan->channel);
		shift = FUNC1(chan->channel);

		ret = FUNC4(indio_dev);
		if (ret)
			return ret;

		ret = FUNC2(data->client, reg1);
		if (ret < 0) {
			FUNC5(indio_dev);
			return ret;
		}
		ret = FUNC3(data->client, reg1,
			(ret & ~(0x0f << shift)) |
			((val & 0x0f) << shift));
		FUNC5(indio_dev);
		return ret;
	case IIO_CHAN_INFO_SAMP_FREQ:
		return FUNC10(data, val);
	default:
		return -EINVAL;
	}
}