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
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  stolen; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_mm_node* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mm_node*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *dev_priv = FUNC4(obj->base.dev);
	struct drm_mm_node *stolen = FUNC1(&obj->stolen);

	FUNC0(!stolen);

	FUNC2(dev_priv, stolen);
	FUNC3(stolen);
}