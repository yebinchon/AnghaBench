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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_bridge {int dummy; } ;
struct fme_br_priv {int /*<<< orphan*/  pdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct fpga_bridge* FUNC1 (struct device*,char*,int /*<<< orphan*/ *,struct fme_br_priv*) ; 
 struct fme_br_priv* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fme_bridge_ops ; 
 int FUNC3 (struct fpga_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct fpga_bridge*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct fme_br_priv *priv;
	struct fpga_bridge *br;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->pdata = FUNC0(dev);

	br = FUNC1(dev, "DFL FPGA FME Bridge",
				     &fme_bridge_ops, priv);
	if (!br)
		return -ENOMEM;

	FUNC4(pdev, br);

	return FUNC3(br);
}