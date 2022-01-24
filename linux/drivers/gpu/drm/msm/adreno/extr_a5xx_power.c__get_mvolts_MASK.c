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
typedef  int uint32_t ;
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_gpu {struct drm_device* dev; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_pm_opp*) ; 

__attribute__((used)) static inline uint32_t FUNC4(struct msm_gpu *gpu, uint32_t freq)
{
	struct drm_device *dev = gpu->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct platform_device *pdev = priv->gpu_pdev;
	struct dev_pm_opp *opp;
	u32 ret = 0;

	opp = FUNC1(&pdev->dev, freq, true);

	if (!FUNC0(opp)) {
		ret = FUNC2(opp) / 1000;
		FUNC3(opp);
	}

	return ret;
}