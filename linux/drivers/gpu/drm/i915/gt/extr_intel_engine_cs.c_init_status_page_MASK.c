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
struct TYPE_6__ {void* vma; int /*<<< orphan*/  addr; } ;
struct intel_engine_cs {int /*<<< orphan*/  i915; TYPE_3__ status_page; TYPE_2__* gt; } ;
typedef  void i915_vma ;
typedef  void drm_i915_gem_object ;
struct TYPE_5__ {TYPE_1__* ggtt; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_CACHE_LLC ; 
 int /*<<< orphan*/  I915_MAP_WB ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct intel_engine_cs*,void*) ; 

__attribute__((used)) static int FUNC12(struct intel_engine_cs *engine)
{
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	void *vaddr;
	int ret;

	/*
	 * Though the HWS register does support 36bit addresses, historically
	 * we have had hangs and corruption reported due to wild writes if
	 * the HWS is placed above 4G. We only allow objects to be allocated
	 * in GFP_DMA32 for i965, and no earlier physical address users had
	 * access to more than 4G.
	 */
	obj = FUNC4(engine->i915, PAGE_SIZE);
	if (FUNC2(obj)) {
		FUNC0("Failed to allocate status page\n");
		return FUNC3(obj);
	}

	FUNC7(obj, I915_CACHE_LLC);

	vma = FUNC9(obj, &engine->gt->ggtt->vm, NULL);
	if (FUNC2(vma)) {
		ret = FUNC3(vma);
		goto err;
	}

	vaddr = FUNC5(obj, I915_MAP_WB);
	if (FUNC2(vaddr)) {
		ret = FUNC3(vaddr);
		goto err;
	}

	engine->status_page.addr = FUNC10(vaddr, 0, PAGE_SIZE);
	engine->status_page.vma = vma;

	if (!FUNC1(engine->i915)) {
		ret = FUNC11(engine, vma);
		if (ret)
			goto err_unpin;
	}

	return 0;

err_unpin:
	FUNC8(obj);
err:
	FUNC6(obj);
	return ret;
}