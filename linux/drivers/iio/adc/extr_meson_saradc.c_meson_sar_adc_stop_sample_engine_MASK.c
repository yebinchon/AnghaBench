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

/* Variables and functions */
 int /*<<< orphan*/  MESON_SAR_ADC_REG0 ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0_FIFO_IRQ_EN ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0_SAMPLING_STOP ; 
 struct meson_sar_adc_priv* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iio_dev *indio_dev)
{
	struct meson_sar_adc_priv *priv = FUNC0(indio_dev);

	FUNC2(priv->regmap, MESON_SAR_ADC_REG0,
			   MESON_SAR_ADC_REG0_FIFO_IRQ_EN, 0);

	FUNC2(priv->regmap, MESON_SAR_ADC_REG0,
			   MESON_SAR_ADC_REG0_SAMPLING_STOP,
			   MESON_SAR_ADC_REG0_SAMPLING_STOP);

	/* wait until all modules are stopped */
	FUNC1(indio_dev);

	FUNC2(priv->regmap, MESON_SAR_ADC_REG0,
			   MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE, 0);
}