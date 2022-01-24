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
struct ttm_tt {scalar_t__ state; scalar_t__ caching_state; int num_pages; int page_flags; struct page* swap_storage; struct page** pages; } ;
struct page {struct address_space* f_mapping; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct page*) ; 
 int TTM_PAGE_FLAG_NO_RETRY ; 
 int TTM_PAGE_FLAG_PERSISTENT_SWAP ; 
 int TTM_PAGE_FLAG_SWAPPED ; 
 int /*<<< orphan*/  __GFP_RETRY_MAYFAIL ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct page* FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC11 (struct address_space*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ tt_cached ; 
 scalar_t__ tt_unbound ; 
 scalar_t__ tt_unpopulated ; 
 int /*<<< orphan*/  FUNC12 (struct ttm_tt*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct ttm_tt *ttm, struct file *persistent_swap_storage)
{
	struct address_space *swap_space;
	struct file *swap_storage;
	struct page *from_page;
	struct page *to_page;
	int i;
	int ret = -ENOMEM;

	FUNC0(ttm->state != tt_unbound && ttm->state != tt_unpopulated);
	FUNC0(ttm->caching_state != tt_cached);

	if (!persistent_swap_storage) {
		swap_storage = FUNC10("ttm swap",
						ttm->num_pages << PAGE_SHIFT,
						0);
		if (FUNC1(swap_storage)) {
			FUNC7("Failed allocating swap storage\n");
			return FUNC2(swap_storage);
		}
	} else {
		swap_storage = persistent_swap_storage;
	}

	swap_space = swap_storage->f_mapping;

	for (i = 0; i < ttm->num_pages; ++i) {
		gfp_t gfp_mask = FUNC5(swap_space);

		gfp_mask |= (ttm->page_flags & TTM_PAGE_FLAG_NO_RETRY ? __GFP_RETRY_MAYFAIL : 0);

		from_page = ttm->pages[i];
		if (FUNC13(from_page == NULL))
			continue;

		to_page = FUNC11(swap_space, i, gfp_mask);
		if (FUNC1(to_page)) {
			ret = FUNC2(to_page);
			goto out_err;
		}
		FUNC3(to_page, from_page);
		FUNC9(to_page);
		FUNC6(to_page);
		FUNC8(to_page);
	}

	FUNC12(ttm);
	ttm->swap_storage = swap_storage;
	ttm->page_flags |= TTM_PAGE_FLAG_SWAPPED;
	if (persistent_swap_storage)
		ttm->page_flags |= TTM_PAGE_FLAG_PERSISTENT_SWAP;

	return 0;
out_err:
	if (!persistent_swap_storage)
		FUNC4(swap_storage);

	return ret;
}