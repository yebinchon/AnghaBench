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
struct component_match {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct component_match**) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct component_match**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct component_match*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  msm_drm_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct component_match *match = NULL;
	int ret;

	if (FUNC4(pdev)) {
		ret = FUNC0(&pdev->dev, &match);
		if (ret)
			return ret;
	}

	ret = FUNC1(&pdev->dev, &match);
	if (ret)
		goto fail;

	/* on all devices that I am aware of, iommu's which can map
	 * any address the cpu can see are used:
	 */
	ret = FUNC3(&pdev->dev, ~0);
	if (ret)
		goto fail;

	ret = FUNC2(&pdev->dev, &msm_drm_ops, match);
	if (ret)
		goto fail;

	return 0;

fail:
	FUNC5(&pdev->dev);
	return ret;
}