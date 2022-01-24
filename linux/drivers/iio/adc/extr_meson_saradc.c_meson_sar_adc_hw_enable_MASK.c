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
typedef  int /*<<< orphan*/  u32 ;
struct meson_sar_adc_priv {int /*<<< orphan*/  vref; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  adc_clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0 ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG3 ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG3_ADC_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct meson_sar_adc_priv* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct iio_dev *indio_dev)
{
	struct meson_sar_adc_priv *priv = FUNC4(indio_dev);
	int ret;
	u32 regval;

	ret = FUNC5(indio_dev);
	if (ret)
		goto err_lock;

	ret = FUNC10(priv->vref);
	if (ret < 0) {
		FUNC3(indio_dev->dev.parent,
			"failed to enable vref regulator\n");
		goto err_vref;
	}

	ret = FUNC2(priv->core_clk);
	if (ret) {
		FUNC3(indio_dev->dev.parent, "failed to enable core clk\n");
		goto err_core_clk;
	}

	regval = FUNC0(MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, 1);
	FUNC8(priv->regmap, MESON_SAR_ADC_REG0,
			   MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, regval);

	FUNC6(indio_dev, true);

	FUNC8(priv->regmap, MESON_SAR_ADC_REG3,
			   MESON_SAR_ADC_REG3_ADC_EN,
			   MESON_SAR_ADC_REG3_ADC_EN);

	FUNC11(5);

	ret = FUNC2(priv->adc_clk);
	if (ret) {
		FUNC3(indio_dev->dev.parent, "failed to enable adc clk\n");
		goto err_adc_clk;
	}

	FUNC7(indio_dev);

	return 0;

err_adc_clk:
	FUNC8(priv->regmap, MESON_SAR_ADC_REG3,
			   MESON_SAR_ADC_REG3_ADC_EN, 0);
	FUNC6(indio_dev, false);
	FUNC1(priv->core_clk);
err_core_clk:
	FUNC9(priv->vref);
err_vref:
	FUNC7(indio_dev);
err_lock:
	return ret;
}