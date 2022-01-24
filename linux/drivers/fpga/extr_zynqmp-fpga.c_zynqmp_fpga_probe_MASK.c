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
struct zynqmp_fpga_priv {struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct fpga_manager* FUNC1 (struct device*,char*,int /*<<< orphan*/ *,struct zynqmp_fpga_priv*) ; 
 struct zynqmp_fpga_priv* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct fpga_manager*) ; 
 int /*<<< orphan*/  zynqmp_fpga_ops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct zynqmp_fpga_priv *priv;
	struct fpga_manager *mgr;
	int ret;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;

	mgr = FUNC1(dev, "Xilinx ZynqMP FPGA Manager",
				   &zynqmp_fpga_ops, priv);
	if (!mgr)
		return -ENOMEM;

	FUNC4(pdev, mgr);

	ret = FUNC3(mgr);
	if (ret) {
		FUNC0(dev, "unable to register FPGA manager");
		return ret;
	}

	return 0;
}