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
struct sg_table {int /*<<< orphan*/  sgl; } ;
struct TYPE_2__ {int /*<<< orphan*/  import_attach; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (struct sg_table*) ; 
 int FUNC1 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*,struct sg_table*,unsigned int) ; 
 struct sg_table* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_i915_gem_object *obj)
{
	struct sg_table *pages;
	unsigned int sg_page_sizes;

	pages = FUNC3(obj->base.import_attach,
				       DMA_BIDIRECTIONAL);
	if (FUNC0(pages))
		return FUNC1(pages);

	sg_page_sizes = FUNC4(pages->sgl);

	FUNC2(obj, pages, sg_page_sizes);

	return 0;
}