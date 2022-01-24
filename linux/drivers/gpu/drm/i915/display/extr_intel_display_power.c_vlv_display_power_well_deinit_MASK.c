#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* dev; } ;
struct drm_i915_private {TYPE_3__ drm; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_suspended; } ;
struct TYPE_5__ {TYPE_1__ power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	FUNC3(&dev_priv->irq_lock);
	FUNC5(dev_priv);
	FUNC4(&dev_priv->irq_lock);

	/* make sure we're done processing display irqs */
	FUNC2(dev_priv);

	FUNC1(dev_priv);

	/* Prevent us from re-enabling polling on accident in late suspend */
	if (!dev_priv->drm.dev->power.is_suspended)
		FUNC0(dev_priv);
}