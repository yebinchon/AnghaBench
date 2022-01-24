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
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_cs {TYPE_2__* gt; } ;
struct i915_vma {int dummy; } ;
struct i915_gem_context {int /*<<< orphan*/  vm; } ;
struct i915_address_space {scalar_t__ total; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct drm_i915_gem_object {TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* ggtt; } ;
struct TYPE_4__ {struct i915_address_space vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 unsigned int PAGE_SHIFT ; 
 int PIN_HIGH ; 
 int PIN_USER ; 
 int FUNC2 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 struct i915_vma* FUNC6 (struct drm_i915_gem_object*,struct i915_address_space*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int FUNC9 (struct i915_vma*,struct i915_gem_context*,struct intel_engine_cs*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_engine_cs*) ; 
 unsigned int FUNC11 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static int FUNC12(struct drm_i915_gem_object *obj,
		    struct i915_gem_context *ctx,
		    struct intel_engine_cs *engine,
		    unsigned int dw)
{
	struct i915_address_space *vm = ctx->vm ?: &engine->gt->ggtt->vm;
	struct i915_vma *vma;
	int err;

	FUNC0(obj->base.size > vm->total);
	FUNC0(!FUNC10(engine));

	vma = FUNC6(obj, vm, NULL);
	if (FUNC1(vma))
		return FUNC2(vma);

	FUNC3(obj);
	err = FUNC4(obj, true);
	FUNC5(obj);
	if (err)
		return err;

	err = FUNC7(vma, 0, 0, PIN_HIGH | PIN_USER);
	if (err)
		return err;

	/*
	 * Within the GTT the huge objects maps every page onto
	 * its 1024 real pages (using phys_pfn = dma_pfn % 1024).
	 * We set the nth dword within the page using the nth
	 * mapping via the GTT - this should exercise the GTT mapping
	 * whilst checking that each context provides a unique view
	 * into the object.
	 */
	err = FUNC9(vma,
			      ctx,
			      engine,
			      (dw * FUNC11(obj)) << PAGE_SHIFT |
			      (dw * sizeof(u32)),
			      FUNC11(obj),
			      dw);
	FUNC8(vma);

	return err;
}