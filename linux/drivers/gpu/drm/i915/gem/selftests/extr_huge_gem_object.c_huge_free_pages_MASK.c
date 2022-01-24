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
struct sg_table {struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct drm_i915_gem_object {unsigned long scratch; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_gem_object *obj,
			    struct sg_table *pages)
{
	unsigned long nreal = obj->scratch / PAGE_SIZE;
	struct scatterlist *sg;

	for (sg = pages->sgl; sg && nreal--; sg = FUNC1(sg))
		FUNC0(FUNC4(sg));

	FUNC3(pages);
	FUNC2(pages);
}