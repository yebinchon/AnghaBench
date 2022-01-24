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
struct omap_iommu {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  iommu; int /*<<< orphan*/ * group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_iommu*) ; 
 struct omap_iommu* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct omap_iommu *obj = FUNC5(pdev);

	if (obj->group) {
		FUNC3(obj->group);
		obj->group = NULL;

		FUNC1(&obj->iommu);
		FUNC2(&obj->iommu);
	}

	FUNC4(obj);

	FUNC6(obj->dev);

	FUNC0(&pdev->dev, "%s removed\n", obj->name);
	return 0;
}