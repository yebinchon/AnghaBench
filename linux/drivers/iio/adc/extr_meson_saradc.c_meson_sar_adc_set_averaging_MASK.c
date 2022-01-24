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
struct meson_sar_adc_priv {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
typedef  enum meson_sar_adc_num_samples { ____Placeholder_meson_sar_adc_num_samples } meson_sar_adc_num_samples ;
typedef  enum meson_sar_adc_avg_mode { ____Placeholder_meson_sar_adc_avg_mode } meson_sar_adc_avg_mode ;

/* Variables and functions */
 int /*<<< orphan*/  MESON_SAR_ADC_AVG_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 struct meson_sar_adc_priv* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct iio_dev *indio_dev,
					const struct iio_chan_spec *chan,
					enum meson_sar_adc_avg_mode mode,
					enum meson_sar_adc_num_samples samples)
{
	struct meson_sar_adc_priv *priv = FUNC4(indio_dev);
	int val, address = chan->address;

	val = samples << FUNC3(address);
	FUNC5(priv->regmap, MESON_SAR_ADC_AVG_CNTL,
			   FUNC2(address),
			   val);

	val = mode << FUNC1(address);
	FUNC5(priv->regmap, MESON_SAR_ADC_AVG_CNTL,
			   FUNC0(address), val);
}