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
struct stm32_adc_priv {int* irq; int /*<<< orphan*/  domain; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 unsigned int STM32_ADC_MAX_ADCS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct stm32_adc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct stm32_adc_priv*) ; 
 int FUNC4 (struct platform_device*,unsigned int) ; 
 int /*<<< orphan*/  stm32_adc_domain_ops ; 
 int /*<<< orphan*/  stm32_adc_irq_handler ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
			       struct stm32_adc_priv *priv)
{
	struct device_node *np = pdev->dev.of_node;
	unsigned int i;

	for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
		priv->irq[i] = FUNC4(pdev, i);
		if (priv->irq[i] < 0) {
			/*
			 * At least one interrupt must be provided, make others
			 * optional:
			 * - stm32f4/h7 shares a common interrupt.
			 * - stm32mp1, has one line per ADC (either for ADC1,
			 *   ADC2 or both).
			 */
			if (i && priv->irq[i] == -ENXIO)
				continue;

			return priv->irq[i];
		}
	}

	priv->domain = FUNC1(np, STM32_ADC_MAX_ADCS, 0,
					     &stm32_adc_domain_ops,
					     priv);
	if (!priv->domain) {
		FUNC0(&pdev->dev, "Failed to add irq domain\n");
		return -ENOMEM;
	}

	for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
		if (priv->irq[i] < 0)
			continue;
		FUNC2(priv->irq[i], stm32_adc_irq_handler);
		FUNC3(priv->irq[i], priv);
	}

	return 0;
}