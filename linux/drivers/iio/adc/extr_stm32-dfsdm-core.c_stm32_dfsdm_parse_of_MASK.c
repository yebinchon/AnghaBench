#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {unsigned long spi_master_freq; int /*<<< orphan*/ * base; int /*<<< orphan*/  phys_base; } ;
struct dfsdm_priv {unsigned long spi_clk_out_div; TYPE_1__ dfsdm; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * aclk; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 void* FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,struct resource*) ; 
 unsigned long FUNC7 (unsigned long,unsigned int,unsigned int*) ; 
 int FUNC8 (struct device_node*,char*,unsigned int*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev,
				struct dfsdm_priv *priv)
{
	struct device_node *node = pdev->dev.of_node;
	struct resource *res;
	unsigned long clk_freq, divider;
	unsigned int spi_freq, rem;
	int ret;

	if (!node)
		return -EINVAL;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(&pdev->dev, "Failed to get memory resource\n");
		return -ENODEV;
	}
	priv->dfsdm.phys_base = res->start;
	priv->dfsdm.base = FUNC6(&pdev->dev, res);
	if (FUNC0(priv->dfsdm.base))
		return FUNC1(priv->dfsdm.base);

	/*
	 * "dfsdm" clock is mandatory for DFSDM peripheral clocking.
	 * "dfsdm" or "audio" clocks can be used as source clock for
	 * the SPI clock out signal and internal processing, depending
	 * on use case.
	 */
	priv->clk = FUNC5(&pdev->dev, "dfsdm");
	if (FUNC0(priv->clk)) {
		ret = FUNC1(priv->clk);
		if (ret != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "Failed to get clock (%d)\n", ret);
		return ret;
	}

	priv->aclk = FUNC5(&pdev->dev, "audio");
	if (FUNC0(priv->aclk))
		priv->aclk = NULL;

	if (priv->aclk)
		clk_freq = FUNC2(priv->aclk);
	else
		clk_freq = FUNC2(priv->clk);

	/* SPI clock out frequency */
	ret = FUNC8(pdev->dev.of_node, "spi-max-frequency",
				   &spi_freq);
	if (ret < 0) {
		/* No SPI master mode */
		return 0;
	}

	divider = FUNC7(clk_freq, spi_freq, &rem);
	/* Round up divider when ckout isn't precise, not to exceed spi_freq */
	if (rem)
		divider++;

	/* programmable divider is in range of [2:256] */
	if (divider < 2 || divider > 256) {
		FUNC3(&pdev->dev, "spi-max-frequency not achievable\n");
		return -EINVAL;
	}

	/* SPI clock output divider is: divider = CKOUTDIV + 1 */
	priv->spi_clk_out_div = divider - 1;
	priv->dfsdm.spi_master_freq = clk_freq / (priv->spi_clk_out_div + 1);

	if (rem) {
		FUNC4(&pdev->dev, "SPI clock not accurate\n");
		FUNC4(&pdev->dev, "%ld = %d * %d + %d\n",
			 clk_freq, spi_freq, priv->spi_clk_out_div + 1, rem);
	}

	return 0;
}