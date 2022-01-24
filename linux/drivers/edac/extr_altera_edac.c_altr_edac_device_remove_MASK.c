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
struct edac_device_ctl_info {struct altr_edac_device_dev* pvt_info; } ;
struct altr_edac_device_dev {int /*<<< orphan*/  debugfs_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct edac_device_ctl_info *dci = FUNC3(pdev);
	struct altr_edac_device_dev *drvdata = dci->pvt_info;

	FUNC0(drvdata->debugfs_dir);
	FUNC1(&pdev->dev);
	FUNC2(dci);

	return 0;
}