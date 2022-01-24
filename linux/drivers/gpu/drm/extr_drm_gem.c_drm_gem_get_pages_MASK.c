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
struct drm_gem_object {int size; TYPE_1__* filp; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct page** FUNC1 (struct page*) ; 
 struct page** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  __GFP_DMA32 ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC6 (struct page**) ; 
 struct page** FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct address_space*) ; 
 scalar_t__ FUNC9 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct address_space*) ; 
 int FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*,struct page*) ; 
 scalar_t__ FUNC13 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC14 (struct pagevec*) ; 
 struct page* FUNC15 (struct address_space*,int) ; 

struct page **FUNC16(struct drm_gem_object *obj)
{
	struct address_space *mapping;
	struct page *p, **pages;
	struct pagevec pvec;
	int i, npages;

	/* This is the shared memory object that backs the GEM resource */
	mapping = obj->filp->f_mapping;

	/* We already BUG_ON() for non-page-aligned sizes in
	 * drm_gem_object_init(), so we should never hit this unless
	 * driver author is doing something really wrong:
	 */
	FUNC4((obj->size & (PAGE_SIZE - 1)) != 0);

	npages = obj->size >> PAGE_SHIFT;

	pages = FUNC7(npages, sizeof(struct page *), GFP_KERNEL);
	if (pages == NULL)
		return FUNC2(-ENOMEM);

	FUNC10(mapping);

	for (i = 0; i < npages; i++) {
		p = FUNC15(mapping, i);
		if (FUNC3(p))
			goto fail;
		pages[i] = p;

		/* Make sure shmem keeps __GFP_DMA32 allocated pages in the
		 * correct region during swapin. Note that this requires
		 * __GFP_DMA32 to be set in mapping_gfp_mask(inode->i_mapping)
		 * so shmem can relocate pages during swapin if required.
		 */
		FUNC0(FUNC9(mapping, __GFP_DMA32) &&
				(FUNC11(p) >= 0x00100000UL));
	}

	return pages;

fail:
	FUNC8(mapping);
	FUNC14(&pvec);
	while (i--) {
		if (!FUNC12(&pvec, pages[i]))
			FUNC5(&pvec);
	}
	if (FUNC13(&pvec))
		FUNC5(&pvec);

	FUNC6(pages);
	return FUNC1(p);
}