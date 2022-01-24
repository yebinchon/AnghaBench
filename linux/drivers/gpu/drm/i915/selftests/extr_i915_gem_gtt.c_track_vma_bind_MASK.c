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
struct i915_vma {TYPE_2__* vm; int /*<<< orphan*/  vm_link; int /*<<< orphan*/  pages; struct drm_i915_gem_object* obj; } ;
struct TYPE_3__ {int /*<<< orphan*/  pages; } ;
struct drm_i915_gem_object {TYPE_1__ mm; int /*<<< orphan*/  bind_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bound_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct i915_vma *vma)
{
	struct drm_i915_gem_object *obj = vma->obj;

	FUNC1(&obj->bind_count); /* track for eviction later */
	FUNC0(obj);

	vma->pages = obj->mm.pages;

	FUNC3(&vma->vm->mutex);
	FUNC2(&vma->vm_link, &vma->vm->bound_list);
	FUNC4(&vma->vm->mutex);
}