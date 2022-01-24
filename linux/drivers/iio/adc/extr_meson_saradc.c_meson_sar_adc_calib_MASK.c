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
struct meson_sar_adc_priv {int calibscale; scalar_t__ calibbias; TYPE_1__* param; } ;
struct iio_dev {int /*<<< orphan*/ * channels; } ;
typedef  int s64 ;
struct TYPE_2__ {int resolution; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN7_MUX_CH7_INPUT ; 
 int /*<<< orphan*/  CHAN7_MUX_VDD_DIV4 ; 
 int /*<<< orphan*/  CHAN7_MUX_VDD_MUL3_DIV4 ; 
 int /*<<< orphan*/  EIGHT_SAMPLES ; 
 int EINVAL ; 
 int /*<<< orphan*/  MEAN_AVERAGING ; 
 int MILLION ; 
 int FUNC0 (int,int) ; 
 struct meson_sar_adc_priv* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct meson_sar_adc_priv *priv = FUNC1(indio_dev);
	int ret, nominal0, nominal1, value0, value1;

	/* use points 25% and 75% for calibration */
	nominal0 = (1 << priv->param->resolution) / 4;
	nominal1 = (1 << priv->param->resolution) * 3 / 4;

	FUNC3(indio_dev, CHAN7_MUX_VDD_DIV4);
	FUNC4(10, 20);
	ret = FUNC2(indio_dev,
				       &indio_dev->channels[7],
				       MEAN_AVERAGING, EIGHT_SAMPLES, &value0);
	if (ret < 0)
		goto out;

	FUNC3(indio_dev, CHAN7_MUX_VDD_MUL3_DIV4);
	FUNC4(10, 20);
	ret = FUNC2(indio_dev,
				       &indio_dev->channels[7],
				       MEAN_AVERAGING, EIGHT_SAMPLES, &value1);
	if (ret < 0)
		goto out;

	if (value1 <= value0) {
		ret = -EINVAL;
		goto out;
	}

	priv->calibscale = FUNC0((nominal1 - nominal0) * (s64)MILLION,
				   value1 - value0);
	priv->calibbias = nominal0 - FUNC0((s64)value0 * priv->calibscale,
					     MILLION);
	ret = 0;
out:
	FUNC3(indio_dev, CHAN7_MUX_CH7_INPUT);

	return ret;
}