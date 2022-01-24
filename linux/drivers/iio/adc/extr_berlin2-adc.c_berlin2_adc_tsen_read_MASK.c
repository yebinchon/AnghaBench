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
 int /*<<< orphan*/  BERLIN2_SM_CTRL ; 
 int BERLIN2_SM_CTRL_ADC_ROTATE ; 
 int BERLIN2_SM_CTRL_TSEN_RESET ; 
 int /*<<< orphan*/  BERLIN2_SM_TSEN_CTRL ; 
 int BERLIN2_SM_TSEN_CTRL_SETTLING_12 ; 
 int BERLIN2_SM_TSEN_CTRL_SETTLING_MASK ; 
 int BERLIN2_SM_TSEN_CTRL_START ; 
 int FUNC0 (int) ; 
 int BERLIN2_SM_TSEN_CTRL_TRIM_MASK ; 
 int /*<<< orphan*/  BERLIN2_SM_TSEN_STATUS ; 
 int BERLIN2_SM_TSEN_STATUS_INT_EN ; 
 int ETIMEDOUT ; 
 struct berlin2_adc_priv* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev)
{
	struct berlin2_adc_priv *priv = FUNC1(indio_dev);
	int data, ret;

	FUNC3(&priv->lock);

	/* Enable interrupts */
	FUNC6(priv->regmap, BERLIN2_SM_TSEN_STATUS,
		     BERLIN2_SM_TSEN_STATUS_INT_EN);

	/* Configure the ADC */
	FUNC5(priv->regmap, BERLIN2_SM_CTRL,
			   BERLIN2_SM_CTRL_TSEN_RESET |
			   BERLIN2_SM_CTRL_ADC_ROTATE,
			   BERLIN2_SM_CTRL_ADC_ROTATE);

	/* Configure the temperature sensor */
	FUNC5(priv->regmap, BERLIN2_SM_TSEN_CTRL,
			   BERLIN2_SM_TSEN_CTRL_TRIM_MASK |
			   BERLIN2_SM_TSEN_CTRL_SETTLING_MASK |
			   BERLIN2_SM_TSEN_CTRL_START,
			   FUNC0(3) |
			   BERLIN2_SM_TSEN_CTRL_SETTLING_12 |
			   BERLIN2_SM_TSEN_CTRL_START);

	ret = FUNC7(priv->wq, priv->data_available,
					       FUNC2(1000));

	/* Disable interrupts */
	FUNC5(priv->regmap, BERLIN2_SM_TSEN_STATUS,
			   BERLIN2_SM_TSEN_STATUS_INT_EN, 0);

	if (ret == 0)
		ret = -ETIMEDOUT;
	if (ret < 0) {
		FUNC4(&priv->lock);
		return ret;
	}

	FUNC5(priv->regmap, BERLIN2_SM_TSEN_CTRL,
			   BERLIN2_SM_TSEN_CTRL_START, 0);

	data = priv->data;
	priv->data_available = false;

	FUNC4(&priv->lock);

	return data;
}