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
struct page {int dummy; } ;
struct drm_vgem_gem_object {struct page** pages; int /*<<< orphan*/  pages_lock; int /*<<< orphan*/  pages_pin_count; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page**) ; 
 struct page** FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page **FUNC4(struct drm_vgem_gem_object *bo)
{
	FUNC2(&bo->pages_lock);
	if (bo->pages_pin_count++ == 0) {
		struct page **pages;

		pages = FUNC1(&bo->base);
		if (FUNC0(pages)) {
			bo->pages_pin_count--;
			FUNC3(&bo->pages_lock);
			return pages;
		}

		bo->pages = pages;
	}
	FUNC3(&bo->pages_lock);

	return bo->pages;
}