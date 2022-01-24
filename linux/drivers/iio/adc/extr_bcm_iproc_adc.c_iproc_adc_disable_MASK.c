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
struct iproc_adc_priv {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPROC_ADC_CONTROLLER_EN ; 
 int /*<<< orphan*/  IPROC_REGCTL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct iproc_adc_priv* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iio_dev *indio_dev)
{
	u32 val;
	int ret;
	struct iproc_adc_priv *adc_priv = FUNC1(indio_dev);

	ret = FUNC2(adc_priv->regmap, IPROC_REGCTL2, &val);
	if (ret) {
		FUNC0(&indio_dev->dev,
			"failed to read IPROC_REGCTL2 %d\n", ret);
		return;
	}

	val &= ~IPROC_ADC_CONTROLLER_EN;
	ret = FUNC3(adc_priv->regmap, IPROC_REGCTL2, val);
	if (ret) {
		FUNC0(&indio_dev->dev,
			"failed to write IPROC_REGCTL2 %d\n", ret);
		return;
	}
}