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
struct intel_engine_cs {void* default_state; TYPE_2__* gt; int /*<<< orphan*/  context_size; struct drm_i915_private* i915; } ;
typedef  void i915_vma ;
struct drm_i915_private {int dummy; } ;
typedef  void drm_i915_gem_object ;
struct TYPE_4__ {TYPE_1__* ggtt; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  I915_CACHE_L3_LLC ; 
 int /*<<< orphan*/  I915_MAP_WB ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (void*) ; 
 void* FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i915_vma *
FUNC13(struct intel_engine_cs *engine)
{
	struct drm_i915_private *i915 = engine->i915;
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	int err;

	obj = FUNC5(i915, engine->context_size);
	if (FUNC2(obj))
		return FUNC0(obj);

	/*
	 * Try to make the context utilize L3 as well as LLC.
	 *
	 * On VLV we don't have L3 controls in the PTEs so we
	 * shouldn't touch the cache level, especially as that
	 * would make the object snooped which might have a
	 * negative performance impact.
	 *
	 * Snooping is required on non-llc platforms in execlist
	 * mode, but since all GGTT accesses use PAT entry 0 we
	 * get snooping anyway regardless of cache_level.
	 *
	 * This is only applicable for Ivy Bridge devices since
	 * later platforms don't have L3 control bits in the PTE.
	 */
	if (FUNC3(i915))
		FUNC9(obj, I915_CACHE_L3_LLC);

	if (engine->default_state) {
		void *defaults, *vaddr;

		vaddr = FUNC7(obj, I915_MAP_WB);
		if (FUNC2(vaddr)) {
			err = FUNC4(vaddr);
			goto err_obj;
		}

		defaults = FUNC7(engine->default_state,
						   I915_MAP_WB);
		if (FUNC2(defaults)) {
			err = FUNC4(defaults);
			goto err_map;
		}

		FUNC12(vaddr, defaults, engine->context_size);
		FUNC10(engine->default_state);

		FUNC6(obj);
		FUNC10(obj);
	}

	vma = FUNC11(obj, &engine->gt->ggtt->vm, NULL);
	if (FUNC2(vma)) {
		err = FUNC4(vma);
		goto err_obj;
	}

	return vma;

err_map:
	FUNC10(obj);
err_obj:
	FUNC8(obj);
	return FUNC1(err);
}