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
struct drm_psb_private {int /*<<< orphan*/  irqmask_lock; } ;
struct drm_device {scalar_t__ dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_psb_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv =
		(struct drm_psb_private *) dev->dev_private;
	unsigned long irqflags;

	FUNC2(&dev_priv->irqmask_lock, irqflags);

	/* enable DPST */
	FUNC0(dev_priv, 0);
	FUNC1(dev);

	FUNC3(&dev_priv->irqmask_lock, irqflags);
	return 0;
}