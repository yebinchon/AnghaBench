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
struct msm_edp {struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct msm_edp*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct msm_edp* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct msm_edp* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct msm_edp*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct msm_edp*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static struct msm_edp *FUNC7(struct platform_device *pdev)
{
	struct msm_edp *edp = NULL;
	int ret;

	if (!pdev) {
		FUNC6("no eDP device\n");
		ret = -ENXIO;
		goto fail;
	}

	edp = FUNC2(&pdev->dev, sizeof(*edp), GFP_KERNEL);
	if (!edp) {
		ret = -ENOMEM;
		goto fail;
	}
	FUNC0("eDP probed=%p", edp);

	edp->pdev = pdev;
	FUNC5(pdev, edp);

	ret = FUNC4(edp);
	if (ret)
		goto fail;

	return edp;

fail:
	if (edp)
		FUNC3(pdev);

	return FUNC1(ret);
}