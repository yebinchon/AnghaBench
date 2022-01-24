#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct list_head {int dummy; } ;
struct i915_gem_context {TYPE_2__* i915; int /*<<< orphan*/  vm; } ;
struct i915_address_space {int total; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  st_link; } ;
struct drm_file {int dummy; } ;
struct TYPE_4__ {struct i915_address_space vm; } ;
struct TYPE_5__ {TYPE_1__ ggtt; } ;

/* Variables and functions */
 unsigned long long DW_PER_PAGE ; 
 struct drm_i915_gem_object* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_i915_gem_object*) ; 
 unsigned long long PAGE_SIZE ; 
 int /*<<< orphan*/  STACK_MAGIC ; 
 int FUNC2 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_file*,struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC4 (TYPE_2__*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct drm_i915_gem_object *
FUNC11(struct i915_gem_context *ctx,
		   struct drm_file *file,
		   struct list_head *objects)
{
	struct drm_i915_gem_object *obj;
	struct i915_address_space *vm = ctx->vm ?: &ctx->i915->ggtt.vm;
	u64 size;
	int err;

	/* Keep in GEM's good graces */
	FUNC6(ctx->i915);

	size = FUNC8(vm->total / 2, 1024ull * DW_PER_PAGE * PAGE_SIZE);
	size = FUNC10(size, DW_PER_PAGE * PAGE_SIZE);

	obj = FUNC4(ctx->i915, DW_PER_PAGE * PAGE_SIZE, size);
	if (FUNC1(obj))
		return obj;

	err = FUNC3(file, obj);
	FUNC5(obj);
	if (err)
		return FUNC0(err);

	err = FUNC2(obj, STACK_MAGIC);
	if (err) {
		FUNC9("Failed to fill object with cpu, err=%d\n",
		       err);
		return FUNC0(err);
	}

	FUNC7(&obj->st_link, objects);
	return obj;
}