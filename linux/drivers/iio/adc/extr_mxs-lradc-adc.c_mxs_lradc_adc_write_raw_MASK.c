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
struct mxs_lradc_scale {int integer; int nano; } ;
struct mxs_lradc_adc {int /*<<< orphan*/  is_divided; struct mxs_lradc_scale** scale_avail; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SCALE 128 
 size_t MXS_LRADC_DIV_DISABLED ; 
 size_t MXS_LRADC_DIV_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct mxs_lradc_adc* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *iio_dev,
				   const struct iio_chan_spec *chan,
				   int val, int val2, long m)
{
	struct mxs_lradc_adc *adc = FUNC3(iio_dev);
	struct mxs_lradc_scale *scale_avail =
			adc->scale_avail[chan->channel];
	int ret;

	ret = FUNC1(iio_dev);
	if (ret)
		return ret;

	switch (m) {
	case IIO_CHAN_INFO_SCALE:
		ret = -EINVAL;
		if (val == scale_avail[MXS_LRADC_DIV_DISABLED].integer &&
		    val2 == scale_avail[MXS_LRADC_DIV_DISABLED].nano) {
			/* divider by two disabled */
			FUNC0(chan->channel, &adc->is_divided);
			ret = 0;
		} else if (val == scale_avail[MXS_LRADC_DIV_ENABLED].integer &&
			   val2 == scale_avail[MXS_LRADC_DIV_ENABLED].nano) {
			/* divider by two enabled */
			FUNC4(chan->channel, &adc->is_divided);
			ret = 0;
		}

		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC2(iio_dev);

	return ret;
}