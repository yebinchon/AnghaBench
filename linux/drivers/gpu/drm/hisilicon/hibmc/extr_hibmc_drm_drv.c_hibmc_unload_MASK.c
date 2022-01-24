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
struct hibmc_drm_private {scalar_t__ msi_enabled; } ;
struct drm_device {struct hibmc_drm_private* dev_private; int /*<<< orphan*/  pdev; scalar_t__ irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hibmc_drm_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct hibmc_drm_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct hibmc_drm_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev)
{
	struct hibmc_drm_private *priv = dev->dev_private;

	FUNC2(priv);

	FUNC0(dev);

	if (dev->irq_enabled)
		FUNC1(dev);
	if (priv->msi_enabled)
		FUNC5(dev->pdev);

	FUNC3(priv);
	FUNC4(priv);
	dev->dev_private = NULL;
	return 0;
}