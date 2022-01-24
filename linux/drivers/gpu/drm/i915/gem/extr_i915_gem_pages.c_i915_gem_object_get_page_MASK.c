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
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct scatterlist* FUNC1 (struct drm_i915_gem_object*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 

struct page *
FUNC5(struct drm_i915_gem_object *obj, unsigned int n)
{
	struct scatterlist *sg;
	unsigned int offset;

	FUNC0(!FUNC2(obj));

	sg = FUNC1(obj, n, &offset);
	return FUNC3(FUNC4(sg), offset);
}