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
typedef  enum meson_sar_adc_chan7_mux_sel { ____Placeholder_meson_sar_adc_chan7_mux_sel } meson_sar_adc_chan7_mux_sel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG3 ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG3_CTRL_CHAN7_MUX_SEL_MASK ; 
 struct meson_sar_adc_priv* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct iio_dev *indio_dev,
					enum meson_sar_adc_chan7_mux_sel sel)
{
	struct meson_sar_adc_priv *priv = FUNC1(indio_dev);
	u32 regval;

	regval = FUNC0(MESON_SAR_ADC_REG3_CTRL_CHAN7_MUX_SEL_MASK, sel);
	FUNC2(priv->regmap, MESON_SAR_ADC_REG3,
			   MESON_SAR_ADC_REG3_CTRL_CHAN7_MUX_SEL_MASK, regval);

	FUNC3(10, 20);
}