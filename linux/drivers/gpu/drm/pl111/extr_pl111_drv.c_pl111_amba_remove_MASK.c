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
struct pl111_drm_dev_private {int /*<<< orphan*/  bridge; scalar_t__ panel; } ;
struct drm_device {struct pl111_drm_dev_private* dev_private; } ;
struct device {int dummy; } ;
struct amba_device {struct device dev; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct amba_device *amba_dev)
{
	struct device *dev = &amba_dev->dev;
	struct drm_device *drm = FUNC0(amba_dev);
	struct pl111_drm_dev_private *priv = drm->dev_private;

	FUNC2(drm);
	if (priv->panel)
		FUNC4(priv->bridge);
	FUNC3(drm);
	FUNC1(drm);
	FUNC5(dev);

	return 0;
}