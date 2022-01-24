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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {struct fpga_compat_id* compat_id; } ;
struct fpga_compat_id {int dummy; } ;
struct fme_mgr_priv {scalar_t__ ioaddr; } ;
struct dfl_fme_mgr_pdata {scalar_t__ ioaddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 struct dfl_fme_mgr_pdata* FUNC2 (struct device*) ; 
 struct fpga_manager* FUNC3 (struct device*,char*,int /*<<< orphan*/ *,struct fme_mgr_priv*) ; 
 scalar_t__ FUNC4 (struct device*,struct resource*) ; 
 void* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct fpga_compat_id*) ; 
 int /*<<< orphan*/  fme_mgr_ops ; 
 int FUNC7 (struct fpga_manager*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct fpga_manager*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct dfl_fme_mgr_pdata *pdata = FUNC2(&pdev->dev);
	struct fpga_compat_id *compat_id;
	struct device *dev = &pdev->dev;
	struct fme_mgr_priv *priv;
	struct fpga_manager *mgr;
	struct resource *res;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (pdata->ioaddr)
		priv->ioaddr = pdata->ioaddr;

	if (!priv->ioaddr) {
		res = FUNC8(pdev, IORESOURCE_MEM, 0);
		priv->ioaddr = FUNC4(dev, res);
		if (FUNC0(priv->ioaddr))
			return FUNC1(priv->ioaddr);
	}

	compat_id = FUNC5(dev, sizeof(*compat_id), GFP_KERNEL);
	if (!compat_id)
		return -ENOMEM;

	FUNC6(priv->ioaddr, compat_id);

	mgr = FUNC3(dev, "DFL FME FPGA Manager",
				   &fme_mgr_ops, priv);
	if (!mgr)
		return -ENOMEM;

	mgr->compat_id = compat_id;
	FUNC9(pdev, mgr);

	return FUNC7(mgr);
}