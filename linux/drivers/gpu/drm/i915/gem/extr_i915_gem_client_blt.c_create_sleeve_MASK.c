#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sg_table {int dummy; } ;
struct i915_vma {int /*<<< orphan*/ * ops; struct i915_sleeve* private; } ;
struct i915_page_sizes {int dummy; } ;
struct i915_sleeve {struct i915_page_sizes page_sizes; struct sg_table* pages; struct i915_vma* vma; } ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct i915_sleeve* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 int FUNC2 (struct i915_vma*) ; 
 struct i915_vma* FUNC3 (struct drm_i915_gem_object*,struct i915_address_space*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_sleeve*) ; 
 struct i915_sleeve* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proxy_vma_ops ; 

__attribute__((used)) static struct i915_sleeve *FUNC6(struct i915_address_space *vm,
					 struct drm_i915_gem_object *obj,
					 struct sg_table *pages,
					 struct i915_page_sizes *page_sizes)
{
	struct i915_sleeve *sleeve;
	struct i915_vma *vma;
	int err;

	sleeve = FUNC5(sizeof(*sleeve), GFP_KERNEL);
	if (!sleeve)
		return FUNC0(-ENOMEM);

	vma = FUNC3(obj, vm, NULL);
	if (FUNC1(vma)) {
		err = FUNC2(vma);
		goto err_free;
	}

	vma->private = sleeve;
	vma->ops = &proxy_vma_ops;

	sleeve->vma = vma;
	sleeve->pages = pages;
	sleeve->page_sizes = *page_sizes;

	return sleeve;

err_free:
	FUNC4(sleeve);
	return FUNC0(err);
}