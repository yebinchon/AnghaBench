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
struct stm32_adc_priv_cfg {int (* clk_sel ) (struct platform_device*,struct stm32_adc_priv*) ;} ;
struct TYPE_5__ {int vref_mv; int /*<<< orphan*/  phys_base; int /*<<< orphan*/ * base; } ;
struct stm32_adc_priv {struct stm32_adc_priv_cfg const* cfg; TYPE_2__ common; int /*<<< orphan*/ * vref; int /*<<< orphan*/ * bclk; int /*<<< orphan*/ * aclk; int /*<<< orphan*/ * vdda; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {TYPE_1__* driver; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STM32_ADC_CORE_SLEEP_DELAY_MS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,struct resource*) ; 
 struct stm32_adc_priv* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int FUNC25 (struct device*,struct stm32_adc_priv*) ; 
 int FUNC26 (struct platform_device*,struct stm32_adc_priv*) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,struct stm32_adc_priv*) ; 
 int FUNC28 (struct platform_device*,struct stm32_adc_priv*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct stm32_adc_priv *priv;
	struct device *dev = &pdev->dev;
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;
	int ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	priv = FUNC6(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC11(pdev, &priv->common);

	priv->cfg = (const struct stm32_adc_priv_cfg *)
		FUNC8(dev->driver->of_match_table, dev)->data;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	priv->common.base = FUNC5(&pdev->dev, res);
	if (FUNC0(priv->common.base))
		return FUNC1(priv->common.base);
	priv->common.phys_base = res->start;

	priv->vdda = FUNC7(&pdev->dev, "vdda");
	if (FUNC0(priv->vdda)) {
		ret = FUNC1(priv->vdda);
		if (ret != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "vdda get failed, %d\n", ret);
		return ret;
	}

	priv->vref = FUNC7(&pdev->dev, "vref");
	if (FUNC0(priv->vref)) {
		ret = FUNC1(priv->vref);
		FUNC3(&pdev->dev, "vref get failed, %d\n", ret);
		return ret;
	}

	priv->aclk = FUNC4(&pdev->dev, "adc");
	if (FUNC0(priv->aclk)) {
		ret = FUNC1(priv->aclk);
		if (ret != -ENOENT) {
			FUNC3(&pdev->dev, "Can't get 'adc' clock\n");
			return ret;
		}
		priv->aclk = NULL;
	}

	priv->bclk = FUNC4(&pdev->dev, "bus");
	if (FUNC0(priv->bclk)) {
		ret = FUNC1(priv->bclk);
		if (ret != -ENOENT) {
			FUNC3(&pdev->dev, "Can't get 'bus' clock\n");
			return ret;
		}
		priv->bclk = NULL;
	}

	ret = FUNC25(dev, priv);
	if (ret)
		return ret;

	FUNC14(dev);
	FUNC18(dev);
	FUNC19(dev, STM32_ADC_CORE_SLEEP_DELAY_MS);
	FUNC21(dev);
	FUNC13(dev);

	ret = FUNC23(dev);
	if (ret)
		goto err_pm_stop;

	ret = FUNC22(priv->vref);
	if (ret < 0) {
		FUNC3(&pdev->dev, "vref get voltage failed, %d\n", ret);
		goto err_hw_stop;
	}
	priv->common.vref_mv = ret / 1000;
	FUNC2(&pdev->dev, "vref+=%dmV\n", priv->common.vref_mv);

	ret = priv->cfg->clk_sel(pdev, priv);
	if (ret < 0)
		goto err_hw_stop;

	ret = FUNC26(pdev, priv);
	if (ret < 0)
		goto err_hw_stop;

	ret = FUNC9(np, NULL, NULL, &pdev->dev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed to populate DT children\n");
		goto err_irq_remove;
	}

	FUNC15(dev);
	FUNC16(dev);

	return 0;

err_irq_remove:
	FUNC27(pdev, priv);
err_hw_stop:
	FUNC24(dev);
err_pm_stop:
	FUNC12(dev);
	FUNC20(dev);
	FUNC17(dev);

	return ret;
}