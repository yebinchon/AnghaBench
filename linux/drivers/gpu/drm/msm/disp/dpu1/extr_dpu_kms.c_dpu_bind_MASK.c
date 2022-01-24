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
struct msm_drm_private {int /*<<< orphan*/ * kms; } ;
struct dss_module_power {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_kms {int rpm_enabled; int /*<<< orphan*/  base; struct platform_device* pdev; struct drm_device* dev; struct dss_module_power mp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct drm_device* FUNC1 (struct device*) ; 
 struct dpu_kms* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kms_funcs ; 
 int FUNC3 (struct platform_device*,struct dss_module_power*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct dpu_kms*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct device *master, void *data)
{
	struct drm_device *ddev = FUNC1(master);
	struct platform_device *pdev = FUNC7(dev);
	struct msm_drm_private *priv = ddev->dev_private;
	struct dpu_kms *dpu_kms;
	struct dss_module_power *mp;
	int ret = 0;

	dpu_kms = FUNC2(&pdev->dev, sizeof(*dpu_kms), GFP_KERNEL);
	if (!dpu_kms)
		return -ENOMEM;

	mp = &dpu_kms->mp;
	ret = FUNC3(pdev, mp);
	if (ret) {
		FUNC0("failed to parse clocks, ret=%d\n", ret);
		return ret;
	}

	FUNC5(pdev, dpu_kms);

	FUNC4(&dpu_kms->base, &kms_funcs);
	dpu_kms->dev = ddev;
	dpu_kms->pdev = pdev;

	FUNC6(&pdev->dev);
	dpu_kms->rpm_enabled = true;

	priv->kms = &dpu_kms->base;
	return ret;
}