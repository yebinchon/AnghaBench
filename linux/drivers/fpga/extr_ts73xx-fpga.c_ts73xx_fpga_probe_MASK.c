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
struct ts73xx_fpga_priv {int /*<<< orphan*/  io_base; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct fpga_manager* FUNC3 (struct device*,char*,int /*<<< orphan*/ *,struct ts73xx_fpga_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct ts73xx_fpga_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fpga_manager*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct fpga_manager*) ; 
 int /*<<< orphan*/  ts73xx_fpga_ops ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *kdev = &pdev->dev;
	struct ts73xx_fpga_priv *priv;
	struct fpga_manager *mgr;
	struct resource *res;

	priv = FUNC5(kdev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = kdev;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	priv->io_base = FUNC4(kdev, res);
	if (FUNC0(priv->io_base)) {
		FUNC2(kdev, "unable to remap registers\n");
		return FUNC1(priv->io_base);
	}

	mgr = FUNC3(kdev, "TS-73xx FPGA Manager",
				   &ts73xx_fpga_ops, priv);
	if (!mgr)
		return -ENOMEM;

	FUNC8(pdev, mgr);

	return FUNC6(mgr);
}