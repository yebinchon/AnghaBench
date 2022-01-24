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
struct iio_dev {int dummy; } ;
struct berlin2_adc_priv {int data_available; int data; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BERLIN2_SM_ADC_STATUS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BERLIN2_SM_CTRL ; 
 int BERLIN2_SM_CTRL_ADC_RESET ; 
 int FUNC1 (int) ; 
 int BERLIN2_SM_CTRL_ADC_SEL_MASK ; 
 int BERLIN2_SM_CTRL_ADC_START ; 
 int ETIMEDOUT ; 
 struct berlin2_adc_priv* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev, int channel)
{
	struct berlin2_adc_priv *priv = FUNC2(indio_dev);
	int data, ret;

	FUNC4(&priv->lock);

	/* Enable the interrupts */
	FUNC7(priv->regmap, BERLIN2_SM_ADC_STATUS,
		     FUNC0(channel));

	/* Configure the ADC */
	FUNC6(priv->regmap, BERLIN2_SM_CTRL,
			   BERLIN2_SM_CTRL_ADC_RESET |
			   BERLIN2_SM_CTRL_ADC_SEL_MASK |
			   BERLIN2_SM_CTRL_ADC_START,
			   FUNC1(channel) |
			   BERLIN2_SM_CTRL_ADC_START);

	ret = FUNC8(priv->wq, priv->data_available,
					       FUNC3(1000));

	/* Disable the interrupts */
	FUNC6(priv->regmap, BERLIN2_SM_ADC_STATUS,
			   FUNC0(channel), 0);

	if (ret == 0)
		ret = -ETIMEDOUT;
	if (ret < 0) {
		FUNC5(&priv->lock);
		return ret;
	}

	FUNC6(priv->regmap, BERLIN2_SM_CTRL,
			   BERLIN2_SM_CTRL_ADC_START, 0);

	data = priv->data;
	priv->data_available = false;

	FUNC5(&priv->lock);

	return data;
}