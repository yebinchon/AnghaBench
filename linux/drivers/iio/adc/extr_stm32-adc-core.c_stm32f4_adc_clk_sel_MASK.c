#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {unsigned long rate; scalar_t__ base; } ;
struct stm32_adc_priv {TYPE_2__ common; TYPE_1__* cfg; int /*<<< orphan*/  aclk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned long max_clk_rate_hz; } ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int STM32F4_ADC_ADCPRE_MASK ; 
 int STM32F4_ADC_ADCPRE_SHIFT ; 
 scalar_t__ STM32F4_ADC_CCR ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (scalar_t__) ; 
 unsigned long* stm32f4_pclk_div ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
			       struct stm32_adc_priv *priv)
{
	unsigned long rate;
	u32 val;
	int i;

	/* stm32f4 has one clk input for analog (mandatory), enforce it here */
	if (!priv->aclk) {
		FUNC3(&pdev->dev, "No 'adc' clock found\n");
		return -ENOENT;
	}

	rate = FUNC1(priv->aclk);
	if (!rate) {
		FUNC3(&pdev->dev, "Invalid clock rate: 0\n");
		return -EINVAL;
	}

	for (i = 0; i < FUNC0(stm32f4_pclk_div); i++) {
		if ((rate / stm32f4_pclk_div[i]) <= priv->cfg->max_clk_rate_hz)
			break;
	}
	if (i >= FUNC0(stm32f4_pclk_div)) {
		FUNC3(&pdev->dev, "adc clk selection failed\n");
		return -EINVAL;
	}

	priv->common.rate = rate / stm32f4_pclk_div[i];
	val = FUNC4(priv->common.base + STM32F4_ADC_CCR);
	val &= ~STM32F4_ADC_ADCPRE_MASK;
	val |= i << STM32F4_ADC_ADCPRE_SHIFT;
	FUNC5(val, priv->common.base + STM32F4_ADC_CCR);

	FUNC2(&pdev->dev, "Using analog clock source at %ld kHz\n",
		priv->common.rate / 1000);

	return 0;
}