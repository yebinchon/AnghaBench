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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;
struct i915_ggtt {int /*<<< orphan*/  mappable_end; TYPE_1__ vm; } ;
struct drm_mm_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MM_INSERT_LOW ; 
 int /*<<< orphan*/  I915_COLOR_UNEVICTABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct drm_mm_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct i915_ggtt *ggtt,
                     struct drm_mm_node *node, u32 size)
{
	FUNC1(node, 0, sizeof(*node));
	return FUNC0(&ggtt->vm.mm, node,
					   size, 0, I915_COLOR_UNEVICTABLE,
					   0, ggtt->mappable_end,
					   DRM_MM_INSERT_LOW);
}