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
struct zynq_fpga_priv {scalar_t__ irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_done; int /*<<< orphan*/  slcr; int /*<<< orphan*/  io_base; int /*<<< orphan*/  dma_lock; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_STS_OFFSET ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXR_ALL_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNLOCK_MASK ; 
 int /*<<< orphan*/  UNLOCK_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 struct fpga_manager* FUNC9 (struct device*,char*,int /*<<< orphan*/ *,struct zynq_fpga_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct resource*) ; 
 struct zynq_fpga_priv* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zynq_fpga_priv*) ; 
 int FUNC13 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  zynq_fpga_isr ; 
 int /*<<< orphan*/  zynq_fpga_ops ; 
 int /*<<< orphan*/  FUNC20 (struct zynq_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct zynq_fpga_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct zynq_fpga_priv *priv;
	struct fpga_manager *mgr;
	struct resource *res;
	int err;

	priv = FUNC11(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC18(&priv->dma_lock);

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	priv->io_base = FUNC10(dev, res);
	if (FUNC0(priv->io_base))
		return FUNC1(priv->io_base);

	priv->slcr = FUNC19(dev->of_node,
		"syscon");
	if (FUNC0(priv->slcr)) {
		FUNC6(dev, "unable to get zynq-slcr regmap\n");
		return FUNC1(priv->slcr);
	}

	FUNC14(&priv->dma_done);

	priv->irq = FUNC15(pdev, 0);
	if (priv->irq < 0) {
		FUNC6(dev, "No IRQ available\n");
		return priv->irq;
	}

	priv->clk = FUNC8(dev, "ref_clk");
	if (FUNC0(priv->clk)) {
		FUNC6(dev, "input clock not found\n");
		return FUNC1(priv->clk);
	}

	err = FUNC4(priv->clk);
	if (err) {
		FUNC6(dev, "unable to enable clock\n");
		return err;
	}

	/* unlock the device */
	FUNC21(priv, UNLOCK_OFFSET, UNLOCK_MASK);

	FUNC20(priv, 0);
	FUNC21(priv, INT_STS_OFFSET, IXR_ALL_MASK);
	err = FUNC12(dev, priv->irq, zynq_fpga_isr, 0, FUNC7(dev),
			       priv);
	if (err) {
		FUNC6(dev, "unable to request IRQ\n");
		FUNC3(priv->clk);
		return err;
	}

	FUNC2(priv->clk);

	mgr = FUNC9(dev, "Xilinx Zynq FPGA Manager",
				   &zynq_fpga_ops, priv);
	if (!mgr)
		return -ENOMEM;

	FUNC17(pdev, mgr);

	err = FUNC13(mgr);
	if (err) {
		FUNC6(dev, "unable to register FPGA manager\n");
		FUNC5(priv->clk);
		return err;
	}

	return 0;
}