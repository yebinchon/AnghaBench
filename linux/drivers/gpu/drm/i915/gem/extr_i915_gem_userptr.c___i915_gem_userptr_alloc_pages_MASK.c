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
struct sg_table {int /*<<< orphan*/  sgl; } ;
struct page {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sg_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*,struct sg_table*,unsigned int) ; 
 int FUNC2 (struct sg_table*,struct page**,int,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_gem_object*,struct sg_table*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sg_table*) ; 
 struct sg_table* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_table*) ; 

__attribute__((used)) static struct sg_table *
FUNC9(struct drm_i915_gem_object *obj,
			       struct page **pvec, int num_pages)
{
	unsigned int max_segment = FUNC5();
	struct sg_table *st;
	unsigned int sg_page_sizes;
	int ret;

	st = FUNC7(sizeof(*st), GFP_KERNEL);
	if (!st)
		return FUNC0(-ENOMEM);

alloc_table:
	ret = FUNC2(st, pvec, num_pages,
					  0, num_pages << PAGE_SHIFT,
					  max_segment,
					  GFP_KERNEL);
	if (ret) {
		FUNC6(st);
		return FUNC0(ret);
	}

	ret = FUNC3(obj, st);
	if (ret) {
		FUNC8(st);

		if (max_segment > PAGE_SIZE) {
			max_segment = PAGE_SIZE;
			goto alloc_table;
		}

		FUNC6(st);
		return FUNC0(ret);
	}

	sg_page_sizes = FUNC4(st->sgl);

	FUNC1(obj, st, sg_page_sizes);

	return st;
}