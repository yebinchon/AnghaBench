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
struct meson_sar_adc_priv {int /*<<< orphan*/  vref; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  adc_clk; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESON_SAR_ADC_REG3 ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG3_ADC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct meson_sar_adc_priv* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct meson_sar_adc_priv *priv = FUNC1(indio_dev);
	int ret;

	ret = FUNC2(indio_dev);
	if (ret)
		return ret;

	FUNC0(priv->adc_clk);

	FUNC5(priv->regmap, MESON_SAR_ADC_REG3,
			   MESON_SAR_ADC_REG3_ADC_EN, 0);

	FUNC3(indio_dev, false);

	FUNC0(priv->core_clk);

	FUNC6(priv->vref);

	FUNC4(indio_dev);

	return 0;
}