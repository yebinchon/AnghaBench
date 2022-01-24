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
typedef  void* u64 ;
struct i915_address_space {int /*<<< orphan*/  mm; TYPE_3__* i915; int /*<<< orphan*/  total; } ;
struct drm_mm_node {unsigned long color; void* start; void* size; } ;
struct TYPE_5__ {TYPE_1__* alias; } ;
struct TYPE_6__ {TYPE_2__ ggtt; } ;
struct TYPE_4__ {struct i915_address_space vm; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I915_GTT_MIN_ALIGNMENT ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 unsigned int PIN_NOEVICT ; 
 int FUNC2 (struct drm_mm_node*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_mm_node*) ; 
 int FUNC4 (struct i915_address_space*,struct drm_mm_node*,unsigned int) ; 
 int FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 

int FUNC6(struct i915_address_space *vm,
			 struct drm_mm_node *node,
			 u64 size, u64 offset, unsigned long color,
			 unsigned int flags)
{
	int err;

	FUNC0(!size);
	FUNC0(!FUNC1(size, I915_GTT_PAGE_SIZE));
	FUNC0(!FUNC1(offset, I915_GTT_MIN_ALIGNMENT));
	FUNC0(FUNC5(offset, size, vm->total));
	FUNC0(vm == &vm->i915->ggtt.alias->vm);
	FUNC0(FUNC2(node));

	node->size = size;
	node->start = offset;
	node->color = color;

	err = FUNC3(&vm->mm, node);
	if (err != -ENOSPC)
		return err;

	if (flags & PIN_NOEVICT)
		return -ENOSPC;

	err = FUNC4(vm, node, flags);
	if (err == 0)
		err = FUNC3(&vm->mm, node);

	return err;
}