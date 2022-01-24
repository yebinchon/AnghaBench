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
typedef  int /*<<< orphan*/  u32 ;
struct omap_irq_wait {int count; int /*<<< orphan*/  node; int /*<<< orphan*/  irqmask; int /*<<< orphan*/  wq; } ;
struct omap_drm_private {int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  wait_list; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct omap_irq_wait* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

struct omap_irq_wait * FUNC6(struct drm_device *dev,
		u32 irqmask, int count)
{
	struct omap_drm_private *priv = dev->dev_private;
	struct omap_irq_wait *wait = FUNC1(sizeof(*wait), GFP_KERNEL);
	unsigned long flags;

	FUNC0(&wait->wq);
	wait->irqmask = irqmask;
	wait->count = count;

	FUNC4(&priv->wait_lock, flags);
	FUNC2(&wait->node, &priv->wait_list);
	FUNC3(dev);
	FUNC5(&priv->wait_lock, flags);

	return wait;
}