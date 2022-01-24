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
struct socfpga_fpga_priv {scalar_t__ irq; void* fpga_data_addr; void* fpga_base_addr; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct fpga_manager* FUNC3 (struct device*,char*,int /*<<< orphan*/ *,struct socfpga_fpga_priv*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 struct socfpga_fpga_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socfpga_fpga_priv*) ; 
 int FUNC7 (struct fpga_manager*) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct fpga_manager*) ; 
 int /*<<< orphan*/  socfpga_fpga_isr ; 
 int /*<<< orphan*/  socfpga_fpga_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct socfpga_fpga_priv *priv;
	struct fpga_manager *mgr;
	struct resource *res;
	int ret;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	priv->fpga_base_addr = FUNC4(dev, res);
	if (FUNC0(priv->fpga_base_addr))
		return FUNC1(priv->fpga_base_addr);

	res = FUNC9(pdev, IORESOURCE_MEM, 1);
	priv->fpga_data_addr = FUNC4(dev, res);
	if (FUNC0(priv->fpga_data_addr))
		return FUNC1(priv->fpga_data_addr);

	priv->irq = FUNC8(pdev, 0);
	if (priv->irq < 0)
		return priv->irq;

	ret = FUNC6(dev, priv->irq, socfpga_fpga_isr, 0,
			       FUNC2(dev), priv);
	if (ret)
		return ret;

	mgr = FUNC3(dev, "Altera SOCFPGA FPGA Manager",
				   &socfpga_fpga_ops, priv);
	if (!mgr)
		return -ENOMEM;

	FUNC10(pdev, mgr);

	return FUNC7(mgr);
}