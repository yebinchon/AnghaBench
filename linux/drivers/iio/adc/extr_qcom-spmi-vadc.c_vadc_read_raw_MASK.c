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
typedef  scalar_t__ u16 ;
struct vadc_priv {struct vadc_channel_prop* chan_props; int /*<<< orphan*/ * graph; } ;
struct vadc_channel_prop {size_t calibration; size_t prescale; int /*<<< orphan*/  scale_fn_type; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_PROCESSED 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 size_t VADC_CALIB_ABSOLUTE ; 
 struct vadc_priv* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__,int*) ; 
 int FUNC2 (struct vadc_priv*,struct vadc_channel_prop*,scalar_t__*) ; 
 int /*<<< orphan*/ * vadc_prescale_ratios ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			 struct iio_chan_spec const *chan, int *val, int *val2,
			 long mask)
{
	struct vadc_priv *vadc = FUNC0(indio_dev);
	struct vadc_channel_prop *prop;
	u16 adc_code;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED:
		prop = &vadc->chan_props[chan->address];
		ret = FUNC2(vadc, prop, &adc_code);
		if (ret)
			break;

		ret = FUNC1(prop->scale_fn_type,
				&vadc->graph[prop->calibration],
				&vadc_prescale_ratios[prop->prescale],
				(prop->calibration == VADC_CALIB_ABSOLUTE),
				adc_code, val);
		if (ret)
			break;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_RAW:
		prop = &vadc->chan_props[chan->address];
		ret = FUNC2(vadc, prop, &adc_code);
		if (ret)
			break;

		*val = (int)adc_code;
		return IIO_VAL_INT;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}