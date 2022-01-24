#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ base; } ;
struct stm32_adc_priv {int /*<<< orphan*/  vdda; int /*<<< orphan*/  vref; scalar_t__ bclk; scalar_t__ aclk; TYPE_3__* cfg; TYPE_1__ common; int /*<<< orphan*/  ccr_bak; } ;
struct stm32_adc_common {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_5__ {scalar_t__ ccr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct stm32_adc_common* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_adc_priv*) ; 
 struct stm32_adc_priv* FUNC5 (struct stm32_adc_common*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct stm32_adc_common *common = FUNC1(dev);
	struct stm32_adc_priv *priv = FUNC5(common);

	/* Backup CCR that may be lost (depends on power state to achieve) */
	priv->ccr_bak = FUNC2(priv->common.base + priv->cfg->regs->ccr);
	if (priv->aclk)
		FUNC0(priv->aclk);
	if (priv->bclk)
		FUNC0(priv->bclk);
	FUNC3(priv->vref);
	FUNC4(priv);
	FUNC3(priv->vdda);
}