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
struct drm_i915_private {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  drm; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC3(struct drm_i915_private *dev_priv,
					   enum pipe pipe, bool enable)
{
	unsigned long flags;
	bool ret;

	FUNC1(&dev_priv->irq_lock, flags);
	ret = FUNC0(&dev_priv->drm, pipe,
						      enable);
	FUNC2(&dev_priv->irq_lock, flags);

	return ret;
}