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
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_cs {TYPE_2__* gt; } ;
struct i915_vma {int dummy; } ;
struct i915_gem_context {int /*<<< orphan*/  vm; } ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ggtt; } ;
struct TYPE_3__ {struct i915_address_space vm; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct i915_vma*) ; 
 unsigned int PIN_OFFSET_FIXED ; 
 unsigned int PIN_USER ; 
 int FUNC1 (struct i915_vma*) ; 
 int FUNC2 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i915_vma*,struct i915_gem_context*,struct intel_engine_cs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 struct i915_vma* FUNC6 (struct drm_i915_gem_object*,struct i915_address_space*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i915_vma*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_vma*) ; 
 int FUNC10 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct i915_gem_context *ctx,
			    struct intel_engine_cs *engine,
			    struct drm_i915_gem_object *obj,
			    u64 size, u64 offset,
			    u32 dword, u32 val)
{
	struct i915_address_space *vm = ctx->vm ?: &engine->gt->ggtt->vm;
	unsigned int flags = PIN_USER | PIN_OFFSET_FIXED;
	struct i915_vma *vma;
	int err;

	vma = FUNC6(obj, vm, NULL);
	if (FUNC0(vma))
		return FUNC1(vma);

	err = FUNC8(vma);
	if (err)
		goto out_vma_close;

	err = FUNC7(vma, size, 0, flags | offset);
	if (err) {
		/*
		 * The ggtt may have some pages reserved so
		 * refrain from erroring out.
		 */
		if (err == -ENOSPC && FUNC4(vm))
			err = 0;

		goto out_vma_close;
	}

	err = FUNC10(vma);
	if (err)
		goto out_vma_unpin;

	err = FUNC3(vma, ctx, engine, dword, val);
	if (err) {
		FUNC11("gpu-write failed at offset=%llx\n", offset);
		goto out_vma_unpin;
	}

	err = FUNC2(obj, dword, val);
	if (err) {
		FUNC11("cpu-check failed at offset=%llx\n", offset);
		goto out_vma_unpin;
	}

out_vma_unpin:
	FUNC9(vma);
out_vma_close:
	FUNC5(vma);

	return err;
}