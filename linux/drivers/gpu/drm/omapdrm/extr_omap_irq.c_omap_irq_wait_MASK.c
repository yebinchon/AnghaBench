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
struct omap_irq_wait {scalar_t__ count; int /*<<< orphan*/  node; int /*<<< orphan*/  wq; } ;
struct omap_drm_private {int /*<<< orphan*/  wait_lock; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_irq_wait*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,unsigned long) ; 

int FUNC6(struct drm_device *dev, struct omap_irq_wait *wait,
		unsigned long timeout)
{
	struct omap_drm_private *priv = dev->dev_private;
	unsigned long flags;
	int ret;

	ret = FUNC5(wait->wq, (wait->count <= 0), timeout);

	FUNC3(&priv->wait_lock, flags);
	FUNC1(&wait->node);
	FUNC2(dev);
	FUNC4(&priv->wait_lock, flags);

	FUNC0(wait);

	return ret == 0 ? -1 : 0;
}