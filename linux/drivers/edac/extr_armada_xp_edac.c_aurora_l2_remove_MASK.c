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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct edac_device_ctl_info {struct aurora_l2_drvdata* pvt_info; } ;
struct aurora_l2_drvdata {int /*<<< orphan*/  debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct edac_device_ctl_info *dci = FUNC3(pdev);
#ifdef CONFIG_EDAC_DEBUG
	struct aurora_l2_drvdata *drvdata = dci->pvt_info;

	edac_debugfs_remove_recursive(drvdata->debugfs);
#endif
	FUNC1(&pdev->dev);
	FUNC2(dci);
	FUNC4(pdev, NULL);

	return 0;
}