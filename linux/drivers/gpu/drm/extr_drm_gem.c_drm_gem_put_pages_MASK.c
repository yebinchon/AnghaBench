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
struct pagevec {int dummy; } ;
struct page {int dummy; } ;
struct drm_gem_object {int size; int /*<<< orphan*/  filp; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pagevec*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page**) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct pagevec*,struct page*) ; 
 scalar_t__ FUNC7 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

void FUNC10(struct drm_gem_object *obj, struct page **pages,
		bool dirty, bool accessed)
{
	int i, npages;
	struct address_space *mapping;
	struct pagevec pvec;

	mapping = FUNC2(obj->filp)->i_mapping;
	FUNC4(mapping);

	/* We already BUG_ON() for non-page-aligned sizes in
	 * drm_gem_object_init(), so we should never hit this unless
	 * driver author is doing something really wrong:
	 */
	FUNC0((obj->size & (PAGE_SIZE - 1)) != 0);

	npages = obj->size >> PAGE_SHIFT;

	FUNC8(&pvec);
	for (i = 0; i < npages; i++) {
		if (!pages[i])
			continue;

		if (dirty)
			FUNC9(pages[i]);

		if (accessed)
			FUNC5(pages[i]);

		/* Undo the reference we took when populating the table */
		if (!FUNC6(&pvec, pages[i]))
			FUNC1(&pvec);
	}
	if (FUNC7(&pvec))
		FUNC1(&pvec);

	FUNC3(pages);
}