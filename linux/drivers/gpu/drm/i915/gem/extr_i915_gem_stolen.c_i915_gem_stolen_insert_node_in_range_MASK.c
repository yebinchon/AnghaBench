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
typedef  int u64 ;
struct drm_mm_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stolen_lock; int /*<<< orphan*/  stolen; } ;
struct drm_i915_private {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MM_INSERT_BEST ; 
 int ENODEV ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_mm_node*,int,unsigned int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_i915_private *dev_priv,
					 struct drm_mm_node *node, u64 size,
					 unsigned alignment, u64 start, u64 end)
{
	int ret;

	if (!FUNC1(&dev_priv->mm.stolen))
		return -ENODEV;

	/* WaSkipStolenMemoryFirstPage:bdw+ */
	if (FUNC0(dev_priv) >= 8 && start < 4096)
		start = 4096;

	FUNC3(&dev_priv->mm.stolen_lock);
	ret = FUNC2(&dev_priv->mm.stolen, node,
					  size, alignment, 0,
					  start, end, DRM_MM_INSERT_BEST);
	FUNC4(&dev_priv->mm.stolen_lock);

	return ret;
}