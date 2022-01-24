#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ size; int /*<<< orphan*/  start; } ;
struct i915_vma {TYPE_2__ node; int /*<<< orphan*/  size; TYPE_1__* vm; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int,unsigned int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 

__attribute__((used)) static bool FUNC4(struct i915_vma *vma,
				   int tiling_mode, unsigned int stride)
{
	struct drm_i915_private *i915 = vma->vm->i915;
	u32 size, alignment;

	if (!FUNC3(vma))
		return true;

	size = FUNC2(i915, vma->size, tiling_mode, stride);
	if (vma->node.size < size)
		return false;

	alignment = FUNC1(i915, vma->size, tiling_mode, stride);
	if (!FUNC0(vma->node.start, alignment))
		return false;

	return true;
}