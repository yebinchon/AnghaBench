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
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0 ; 
 int /*<<< orphan*/  MESON_SAR_ADC_REG0_BUSY_MASK ; 
 struct meson_sar_adc_priv* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct meson_sar_adc_priv *priv = FUNC1(indio_dev);
	int regval, timeout = 10000;

	/*
	 * NOTE: we need a small delay before reading the status, otherwise
	 * the sample engine may not have started internally (which would
	 * seem to us that sampling is already finished).
	 */
	do {
		FUNC3(1);
		FUNC2(priv->regmap, MESON_SAR_ADC_REG0, &regval);
	} while (FUNC0(MESON_SAR_ADC_REG0_BUSY_MASK, regval) && timeout--);

	if (timeout < 0)
		return -ETIMEDOUT;

	return 0;
}