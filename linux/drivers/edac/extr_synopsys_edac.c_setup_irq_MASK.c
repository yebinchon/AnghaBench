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
struct synps_edac_priv {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {struct synps_edac_priv* pvt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_MC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct synps_edac_priv*) ; 
 int /*<<< orphan*/  intr_handler ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mem_ctl_info *mci,
		     struct platform_device *pdev)
{
	struct synps_edac_priv *priv = mci->pvt_info;
	int ret, irq;

	irq = FUNC4(pdev, 0);
	if (irq < 0) {
		FUNC2(KERN_ERR, EDAC_MC,
			    "No IRQ %d in DT\n", irq);
		return irq;
	}

	ret = FUNC1(&pdev->dev, irq, intr_handler,
			       0, FUNC0(&pdev->dev), mci);
	if (ret < 0) {
		FUNC2(KERN_ERR, EDAC_MC, "Failed to request IRQ\n");
		return ret;
	}

	FUNC3(priv);

	return 0;
}