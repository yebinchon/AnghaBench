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
struct berlin2_adc_priv {unsigned int data; int data_available; int /*<<< orphan*/  wq; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BERLIN2_SM_ADC_DATA ; 
 unsigned int BERLIN2_SM_ADC_MASK ; 
 int /*<<< orphan*/  BERLIN2_SM_ADC_STATUS ; 
 unsigned int BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct berlin2_adc_priv* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *private)
{
	struct berlin2_adc_priv *priv = FUNC0(private);
	unsigned val;

	FUNC1(priv->regmap, BERLIN2_SM_ADC_STATUS, &val);
	if (val & BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK) {
		FUNC1(priv->regmap, BERLIN2_SM_ADC_DATA, &priv->data);
		priv->data &= BERLIN2_SM_ADC_MASK;

		val &= ~BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK;
		FUNC2(priv->regmap, BERLIN2_SM_ADC_STATUS, val);

		priv->data_available = true;
		FUNC3(&priv->wq);
	}

	return IRQ_HANDLED;
}