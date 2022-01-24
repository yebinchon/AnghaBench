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
struct stm32_adc_priv {int vdda_uv; int /*<<< orphan*/  vdda; int /*<<< orphan*/  vref; scalar_t__ bclk; TYPE_3__* cfg; TYPE_1__ common; int /*<<< orphan*/  ccr_bak; scalar_t__ aclk; } ;
struct stm32_adc_common {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_5__ {scalar_t__ ccr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct stm32_adc_common* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_adc_priv*) ; 
 int FUNC8 (struct stm32_adc_priv*,struct device*) ; 
 struct stm32_adc_priv* FUNC9 (struct stm32_adc_common*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct stm32_adc_common *common = FUNC3(dev);
	struct stm32_adc_priv *priv = FUNC9(common);
	int ret;

	ret = FUNC5(priv->vdda);
	if (ret < 0) {
		FUNC2(dev, "vdda enable failed %d\n", ret);
		return ret;
	}

	ret = FUNC6(priv->vdda);
	if (ret < 0) {
		FUNC2(dev, "vdda get voltage failed, %d\n", ret);
		goto err_vdda_disable;
	}
	priv->vdda_uv = ret;

	ret = FUNC8(priv, dev);
	if (ret < 0)
		goto err_vdda_disable;

	ret = FUNC5(priv->vref);
	if (ret < 0) {
		FUNC2(dev, "vref enable failed\n");
		goto err_switches_dis;
	}

	if (priv->bclk) {
		ret = FUNC1(priv->bclk);
		if (ret < 0) {
			FUNC2(dev, "bus clk enable failed\n");
			goto err_regulator_disable;
		}
	}

	if (priv->aclk) {
		ret = FUNC1(priv->aclk);
		if (ret < 0) {
			FUNC2(dev, "adc clk enable failed\n");
			goto err_bclk_disable;
		}
	}

	FUNC10(priv->ccr_bak, priv->common.base + priv->cfg->regs->ccr);

	return 0;

err_bclk_disable:
	if (priv->bclk)
		FUNC0(priv->bclk);
err_regulator_disable:
	FUNC4(priv->vref);
err_switches_dis:
	FUNC7(priv);
err_vdda_disable:
	FUNC4(priv->vdda);

	return ret;
}