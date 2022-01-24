#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* mm; } ;
struct reloc_cache {long vaddr; unsigned long page; TYPE_1__ node; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int CLFLUSH_FLAGS ; 
 void* FUNC1 (int) ; 
 unsigned int KMAP ; 
 unsigned int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*,unsigned long) ; 
 int FUNC3 (struct drm_i915_gem_object*,unsigned int*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (long) ; 

__attribute__((used)) static void *FUNC9(struct drm_i915_gem_object *obj,
			struct reloc_cache *cache,
			unsigned long page)
{
	void *vaddr;

	if (cache->vaddr) {
		FUNC5(FUNC8(cache->vaddr));
	} else {
		unsigned int flushes;
		int err;

		err = FUNC3(obj, &flushes);
		if (err)
			return FUNC1(err);

		FUNC0(KMAP & CLFLUSH_FLAGS);
		FUNC0((KMAP | CLFLUSH_FLAGS) & PAGE_MASK);

		cache->vaddr = flushes | KMAP;
		cache->node.mm = (void *)obj;
		if (flushes)
			FUNC6();
	}

	vaddr = FUNC4(FUNC2(obj, page));
	cache->vaddr = FUNC7(cache->vaddr) | (unsigned long)vaddr;
	cache->page = page;

	return vaddr;
}