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
struct meson_sar_adc_priv {int /*<<< orphan*/  temperature_sensor_calibrated; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct iio_chan_spec {scalar_t__ type; int /*<<< orphan*/  address; } ;
typedef  enum meson_sar_adc_num_samples { ____Placeholder_meson_sar_adc_num_samples } meson_sar_adc_num_samples ;
typedef  enum meson_sar_adc_avg_mode { ____Placeholder_meson_sar_adc_avg_mode } meson_sar_adc_avg_mode ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ IIO_TEMP ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct meson_sar_adc_priv* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,struct iio_chan_spec const*) ; 
 int FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,struct iio_chan_spec const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev,
				    const struct iio_chan_spec *chan,
				    enum meson_sar_adc_avg_mode avg_mode,
				    enum meson_sar_adc_num_samples avg_samples,
				    int *val)
{
	struct meson_sar_adc_priv *priv = FUNC1(indio_dev);
	int ret;

	if (chan->type == IIO_TEMP && !priv->temperature_sensor_calibrated)
		return -ENOTSUPP;

	ret = FUNC4(indio_dev);
	if (ret)
		return ret;

	/* clear the FIFO to make sure we're not reading old values */
	FUNC2(indio_dev);

	FUNC6(indio_dev, chan, avg_mode, avg_samples);

	FUNC3(indio_dev, chan);

	FUNC7(indio_dev);
	ret = FUNC5(indio_dev, chan, val);
	FUNC8(indio_dev);

	FUNC9(indio_dev);

	if (ret) {
		FUNC0(indio_dev->dev.parent,
			 "failed to read sample for channel %lu: %d\n",
			 chan->address, ret);
		return ret;
	}

	return IIO_VAL_INT;
}