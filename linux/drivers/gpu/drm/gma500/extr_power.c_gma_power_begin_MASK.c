#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_psb_private {int /*<<< orphan*/  display_count; scalar_t__ display_power; } ;
struct drm_device {TYPE_1__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  power_ctrl_lock ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC6(struct drm_device *dev, bool force_on)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	int ret;
	unsigned long flags;

	FUNC4(&power_ctrl_lock, flags);
	/* Power already on ? */
	if (dev_priv->display_power) {
		dev_priv->display_count++;
		FUNC1(&dev->pdev->dev);
		FUNC5(&power_ctrl_lock, flags);
		return true;
	}
	if (force_on == false)
		goto out_false;

	/* Ok power up needed */
	ret = FUNC0(dev->pdev);
	if (ret == 0) {
		FUNC3(dev);
		FUNC2(dev);
		FUNC1(&dev->pdev->dev);
		dev_priv->display_count++;
		FUNC5(&power_ctrl_lock, flags);
		return true;
	}
out_false:
	FUNC5(&power_ctrl_lock, flags);
	return false;
}