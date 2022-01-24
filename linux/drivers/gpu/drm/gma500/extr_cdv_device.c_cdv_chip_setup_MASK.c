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
struct drm_psb_private {int /*<<< orphan*/  regmap; int /*<<< orphan*/  hotplug_work; } ;
struct drm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  cdv_hotplug_work_func ; 
 int /*<<< orphan*/  cdv_regmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	FUNC0(&dev_priv->hotplug_work, cdv_hotplug_work_func);

	if (FUNC4(dev->pdev))
		FUNC2(dev->dev, "Enabling MSI failed!\n");
	dev_priv->regmap = cdv_regmap;
	FUNC3(dev);
	FUNC6(dev);
	FUNC5(dev);
	FUNC1(dev, false);
	return 0;
}