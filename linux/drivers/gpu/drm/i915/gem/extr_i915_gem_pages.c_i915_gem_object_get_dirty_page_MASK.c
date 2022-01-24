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
struct TYPE_2__ {int /*<<< orphan*/  dirty; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;

/* Variables and functions */
 struct page* FUNC0 (struct drm_i915_gem_object*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

struct page *
FUNC2(struct drm_i915_gem_object *obj,
			       unsigned int n)
{
	struct page *page;

	page = FUNC0(obj, n);
	if (!obj->mm.dirty)
		FUNC1(page);

	return page;
}