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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 unsigned int CLFLUSH_AFTER ; 
 unsigned int CLFLUSH_BEFORE ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 struct page* FUNC2 (struct drm_i915_gem_object*,unsigned long) ; 
 int FUNC3 (struct drm_i915_gem_object*,unsigned int*) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(struct drm_i915_gem_object *obj,
		   unsigned long offset,
		   u32 v)
{
	unsigned int needs_clflush;
	struct page *page;
	void *map;
	u32 *cpu;
	int err;

	err = FUNC3(obj, &needs_clflush);
	if (err)
		return err;

	page = FUNC2(obj, offset >> PAGE_SHIFT);
	map = FUNC4(page);
	cpu = map + FUNC6(offset);

	if (needs_clflush & CLFLUSH_BEFORE)
		FUNC0(cpu, sizeof(*cpu));

	*cpu = v;

	if (needs_clflush & CLFLUSH_AFTER)
		FUNC0(cpu, sizeof(*cpu));

	FUNC5(map);
	FUNC1(obj);

	return 0;
}