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
struct page {int dummy; } ;
struct TYPE_2__ {unsigned long size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_SHIFT ; 
 struct drm_i915_gem_object* FUNC1 (struct dma_buf*) ; 
 struct page* FUNC2 (struct drm_i915_gem_object*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 void* FUNC6 (struct page*) ; 

__attribute__((used)) static void *FUNC7(struct dma_buf *dma_buf, unsigned long page_num)
{
	struct drm_i915_gem_object *obj = FUNC1(dma_buf);
	struct page *page;

	if (page_num >= obj->base.size >> PAGE_SHIFT)
		return NULL;

	if (!FUNC3(obj))
		return NULL;

	if (FUNC4(obj))
		return NULL;

	/* Synchronisation is left to the caller (via .begin_cpu_access()) */
	page = FUNC2(obj, page_num);
	if (FUNC0(page))
		goto err_unpin;

	return FUNC6(page);

err_unpin:
	FUNC5(obj);
	return NULL;
}