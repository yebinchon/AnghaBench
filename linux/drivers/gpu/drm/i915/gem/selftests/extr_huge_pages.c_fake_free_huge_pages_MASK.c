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
struct sg_table {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct sg_table*) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_gem_object *obj,
				 struct sg_table *pages)
{
	FUNC1(pages);
	FUNC0(pages);
}