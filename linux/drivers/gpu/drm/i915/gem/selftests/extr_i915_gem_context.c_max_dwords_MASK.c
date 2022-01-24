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
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 unsigned long DW_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static unsigned long FUNC3(struct drm_i915_gem_object *obj)
{
	unsigned long npages = FUNC2(obj);

	FUNC0(!FUNC1(npages, DW_PER_PAGE));
	return npages / DW_PER_PAGE;
}