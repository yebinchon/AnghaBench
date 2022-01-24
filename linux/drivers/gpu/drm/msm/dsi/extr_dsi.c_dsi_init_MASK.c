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
struct msm_dsi {int id; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct msm_dsi*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct msm_dsi* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct msm_dsi* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_dsi*) ; 
 int FUNC4 (struct msm_dsi*) ; 
 int FUNC5 (struct msm_dsi*) ; 
 int FUNC6 (struct msm_dsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct msm_dsi*) ; 

__attribute__((used)) static struct msm_dsi *FUNC8(struct platform_device *pdev)
{
	struct msm_dsi *msm_dsi;
	int ret;

	if (!pdev)
		return FUNC1(-ENXIO);

	msm_dsi = FUNC2(&pdev->dev, sizeof(*msm_dsi), GFP_KERNEL);
	if (!msm_dsi)
		return FUNC1(-ENOMEM);
	FUNC0("dsi probed=%p", msm_dsi);

	msm_dsi->id = -1;
	msm_dsi->pdev = pdev;
	FUNC7(pdev, msm_dsi);

	/* Init dsi host */
	ret = FUNC5(msm_dsi);
	if (ret)
		goto destroy_dsi;

	/* GET dsi PHY */
	ret = FUNC4(msm_dsi);
	if (ret)
		goto destroy_dsi;

	/* Register to dsi manager */
	ret = FUNC6(msm_dsi);
	if (ret)
		goto destroy_dsi;

	return msm_dsi;

destroy_dsi:
	FUNC3(msm_dsi);
	return FUNC1(ret);
}