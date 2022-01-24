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
struct msm_drm_private {int /*<<< orphan*/ * edp; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master, void *data)
{
	struct drm_device *drm = FUNC1(master);
	struct msm_drm_private *priv = drm->dev_private;

	FUNC0("");
	if (priv->edp) {
		FUNC2(FUNC3(dev));
		priv->edp = NULL;
	}
}