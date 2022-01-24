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
struct drm_psb_private {int /*<<< orphan*/  has_gct; int /*<<< orphan*/  regmap; } ;
struct drm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  oaktrail_regmap ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	int ret;
	
	if (FUNC4(dev->pdev))
		FUNC0(dev->dev, "Enabling MSI failed!\n");

	dev_priv->regmap = oaktrail_regmap;

	ret = FUNC2(dev);
	if (ret < 0)
		return ret;
	if (!dev_priv->has_gct) {
		/* Now pull the BIOS data */
		FUNC6(dev);
		FUNC5(dev);
	}
	FUNC1(dev);
	FUNC3(dev);
	return 0;
}