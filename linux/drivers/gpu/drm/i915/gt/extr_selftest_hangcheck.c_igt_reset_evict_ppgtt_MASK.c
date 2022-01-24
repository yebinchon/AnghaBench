#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_gt {TYPE_2__* i915; } ;
struct i915_gem_context {scalar_t__ vm; } ;
struct drm_file {scalar_t__ vm; } ;
struct TYPE_5__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_6__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_OBJECT_WRITE ; 
 scalar_t__ FUNC0 (struct i915_gem_context*) ; 
 int FUNC1 (struct i915_gem_context*) ; 
 int FUNC2 (struct intel_gt*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evict_vma ; 
 struct i915_gem_context* FUNC3 (TYPE_2__*,struct i915_gem_context*) ; 
 struct i915_gem_context* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	struct intel_gt *gt = arg;
	struct i915_gem_context *ctx;
	struct drm_file *file;
	int err;

	file = FUNC4(gt->i915);
	if (FUNC0(file))
		return FUNC1(file);

	FUNC6(&gt->i915->drm.struct_mutex);
	ctx = FUNC3(gt->i915, file);
	FUNC7(&gt->i915->drm.struct_mutex);
	if (FUNC0(ctx)) {
		err = FUNC1(ctx);
		goto out;
	}

	err = 0;
	if (ctx->vm) /* aliasing == global gtt locking, covered above */
		err = FUNC2(gt, ctx->vm,
					    evict_vma, EXEC_OBJECT_WRITE);

out:
	FUNC5(gt->i915, file);
	return err;
}