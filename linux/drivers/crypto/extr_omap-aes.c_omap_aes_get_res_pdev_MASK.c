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
struct omap_aes_dev {int /*<<< orphan*/ * pdata; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,struct resource*,int) ; 
 int /*<<< orphan*/  omap_aes_pdata_omap2 ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct omap_aes_dev *dd,
		struct platform_device *pdev, struct resource *res)
{
	struct device *dev = &pdev->dev;
	struct resource *r;
	int err = 0;

	/* Get the base address */
	r = FUNC2(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC0(dev, "no MEM resource info\n");
		err = -ENODEV;
		goto err;
	}
	FUNC1(res, r, sizeof(*res));

	/* Only OMAP2/3 can be non-DT */
	dd->pdata = &omap_aes_pdata_omap2;

err:
	return err;
}