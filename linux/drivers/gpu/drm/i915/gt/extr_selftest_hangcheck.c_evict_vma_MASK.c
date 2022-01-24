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
struct i915_address_space {struct drm_i915_private* i915; } ;
struct evict_vma {int /*<<< orphan*/  completion; TYPE_2__* vma; } ;
struct drm_mm_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {struct drm_mm_node node; struct i915_address_space* vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i915_address_space*,struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *data)
{
	struct evict_vma *arg = data;
	struct i915_address_space *vm = arg->vma->vm;
	struct drm_i915_private *i915 = vm->i915;
	struct drm_mm_node evict = arg->vma->node;
	int err;

	FUNC0(&arg->completion);

	FUNC2(&i915->drm.struct_mutex);
	err = FUNC1(vm, &evict, 0);
	FUNC3(&i915->drm.struct_mutex);

	return err;
}