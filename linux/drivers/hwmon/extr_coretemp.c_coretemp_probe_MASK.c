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
struct platform_device {int /*<<< orphan*/  id; struct device dev; } ;
struct platform_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  pkg_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,struct platform_data*,int /*<<< orphan*/ *) ; 
 struct platform_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct platform_data*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct platform_data *pdata;

	/* Initialize the per-zone data structures */
	pdata = FUNC2(dev, sizeof(struct platform_data), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	pdata->pkg_id = pdev->id;
	FUNC3(pdev, pdata);

	pdata->hwmon_dev = FUNC1(dev, DRVNAME,
								  pdata, NULL);
	return FUNC0(pdata->hwmon_dev);
}