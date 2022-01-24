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
struct TYPE_2__ {int reserved; } ;
struct i915_ggtt {TYPE_1__ vm; } ;
struct drm_mm_node {int size; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm_node*) ; 

__attribute__((used)) static void FUNC3(struct i915_ggtt *ggtt,
				struct drm_mm_node *node)
{
	if (!FUNC1(node))
		return;

	FUNC0("deballoon space: range [0x%llx - 0x%llx] %llu KiB.\n",
			 node->start,
			 node->start + node->size,
			 node->size / 1024);

	ggtt->vm.reserved -= node->size;
	FUNC2(node);
}