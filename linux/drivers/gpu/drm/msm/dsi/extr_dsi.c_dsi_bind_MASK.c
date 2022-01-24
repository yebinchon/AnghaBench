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
struct platform_device {int dummy; } ;
struct msm_dsi {size_t id; } ;
struct msm_drm_private {struct msm_dsi** dsi; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct msm_dsi*) ; 
 int FUNC2 (struct msm_dsi*) ; 
 struct drm_device* FUNC3 (struct device*) ; 
 struct msm_dsi* FUNC4 (struct platform_device*) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct device *master, void *data)
{
	struct drm_device *drm = FUNC3(master);
	struct msm_drm_private *priv = drm->dev_private;
	struct platform_device *pdev = FUNC5(dev);
	struct msm_dsi *msm_dsi;

	FUNC0("");
	msm_dsi = FUNC4(pdev);
	if (FUNC1(msm_dsi)) {
		/* Don't fail the bind if the dsi port is not connected */
		if (FUNC2(msm_dsi) == -ENODEV)
			return 0;
		else
			return FUNC2(msm_dsi);
	}

	priv->dsi[msm_dsi->id] = msm_dsi;

	return 0;
}