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
struct msm_edp {int dummy; } ;
struct msm_drm_private {struct msm_edp* edp; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct msm_edp*) ; 
 int FUNC2 (struct msm_edp*) ; 
 struct drm_device* FUNC3 (struct device*) ; 
 struct msm_edp* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct device *master, void *data)
{
	struct drm_device *drm = FUNC3(master);
	struct msm_drm_private *priv = drm->dev_private;
	struct msm_edp *edp;

	FUNC0("");
	edp = FUNC4(FUNC5(dev));
	if (FUNC1(edp))
		return FUNC2(edp);
	priv->edp = edp;

	return 0;
}