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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct i915_gem_context {TYPE_1__* vm; } ;
struct drm_mm_node {scalar_t__ start; scalar_t__ size; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_mm_node* FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct i915_gem_context *ctx, u64 offset)
{
	struct drm_mm_node *node =
		FUNC1(&ctx->vm->mm,
					offset, offset + sizeof(u32) - 1);
	if (!node || node->start > offset)
		return 0;

	FUNC0(offset >= node->start + node->size);

	FUNC3("Target offset 0x%08x_%08x overlaps with a node in the mm!\n",
	       FUNC4(offset), FUNC2(offset));
	return -EINVAL;
}