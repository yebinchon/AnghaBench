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
typedef  int /*<<< orphan*/  u32 ;
struct meson_sar_adc_priv {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0 ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0_FIFO_COUNT_MASK ; 
 struct meson_sar_adc_priv* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct iio_dev *indio_dev)
{
	struct meson_sar_adc_priv *priv = FUNC1(indio_dev);
	u32 regval;

	FUNC2(priv->regmap, MESON_SAR_ADC_REG0, &regval);

	return FUNC0(MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, regval);
}