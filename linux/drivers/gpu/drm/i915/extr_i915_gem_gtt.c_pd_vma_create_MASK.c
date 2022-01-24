#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
struct i915_vma {int size; int fence_size; TYPE_5__* vm; int /*<<< orphan*/  vm_link; int /*<<< orphan*/  closed_link; int /*<<< orphan*/  obj_link; TYPE_4__ ggtt_view; int /*<<< orphan*/  flags; struct gen6_ppgtt* private; int /*<<< orphan*/ * ops; int /*<<< orphan*/  active; } ;
struct TYPE_10__ {int total; int /*<<< orphan*/  mutex; int /*<<< orphan*/  unbound_list; } ;
struct i915_ggtt {TYPE_5__ vm; } ;
struct TYPE_7__ {TYPE_1__* gt; struct drm_i915_private* i915; } ;
struct TYPE_8__ {TYPE_2__ vm; } ;
struct gen6_ppgtt {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_6__ {struct i915_ggtt* ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i915_vma* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  I915_GGTT_VIEW_ROTATED ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE ; 
 int /*<<< orphan*/  I915_VMA_GGTT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct i915_vma* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_vma_ops ; 

__attribute__((used)) static struct i915_vma *FUNC9(struct gen6_ppgtt *ppgtt, int size)
{
	struct drm_i915_private *i915 = ppgtt->base.vm.i915;
	struct i915_ggtt *ggtt = ppgtt->base.vm.gt->ggtt;
	struct i915_vma *vma;

	FUNC1(!FUNC3(size, I915_GTT_PAGE_SIZE));
	FUNC1(size > ggtt->vm.total);

	vma = FUNC5();
	if (!vma)
		return FUNC0(-ENOMEM);

	FUNC4(i915, &vma->active, NULL, NULL);

	vma->vm = &ggtt->vm;
	vma->ops = &pd_vma_ops;
	vma->private = ppgtt;

	vma->size = size;
	vma->fence_size = size;
	vma->flags = I915_VMA_GGTT;
	vma->ggtt_view.type = I915_GGTT_VIEW_ROTATED; /* prevent fencing */

	FUNC2(&vma->obj_link);
	FUNC2(&vma->closed_link);

	FUNC7(&vma->vm->mutex);
	FUNC6(&vma->vm_link, &vma->vm->unbound_list);
	FUNC8(&vma->vm->mutex);

	return vma;
}