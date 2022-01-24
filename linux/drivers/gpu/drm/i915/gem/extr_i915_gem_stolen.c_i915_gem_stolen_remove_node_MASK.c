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
struct drm_mm_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stolen_lock; } ;
struct drm_i915_private {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_i915_private *dev_priv,
				 struct drm_mm_node *node)
{
	FUNC1(&dev_priv->mm.stolen_lock);
	FUNC0(node);
	FUNC2(&dev_priv->mm.stolen_lock);
}