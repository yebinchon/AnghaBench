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
typedef  scalar_t__ u64 ;
struct protection_domain {int mode; scalar_t__* pt_root; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int PAGE_MODE_7_LEVEL ; 
 int PAGE_MODE_NONE ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 size_t FUNC5 (int,unsigned long) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__*,scalar_t__,scalar_t__) ; 
 scalar_t__* FUNC10 (scalar_t__*,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct protection_domain*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 

__attribute__((used)) static u64 *FUNC16(struct protection_domain *domain,
		      unsigned long address,
		      unsigned long page_size,
		      u64 **pte_page,
		      gfp_t gfp,
		      bool *updated)
{
	int level, end_lvl;
	u64 *pte, *page;

	FUNC0(!FUNC15(page_size));

	while (address > FUNC7(domain->mode))
		*updated = FUNC13(domain, address, gfp) || *updated;

	level   = domain->mode - 1;
	pte     = &domain->pt_root[FUNC5(level, address)];
	address = FUNC3(address, page_size);
	end_lvl = FUNC4(page_size);

	while (level > end_lvl) {
		u64 __pte, __npte;
		int pte_level;

		__pte     = *pte;
		pte_level = FUNC8(__pte);

		/*
		 * If we replace a series of large PTEs, we need
		 * to tear down all of them.
		 */
		if (FUNC2(__pte) &&
		    pte_level == PAGE_MODE_7_LEVEL) {
			unsigned long count, i;
			u64 *lpte;

			lpte = FUNC10(pte, NULL, &count);

			/*
			 * Unmap the replicated PTEs that still match the
			 * original large mapping
			 */
			for (i = 0; i < count; ++i)
				FUNC9(&lpte[i], __pte, 0ULL);

			*updated = true;
			continue;
		}

		if (!FUNC2(__pte) ||
		    pte_level == PAGE_MODE_NONE) {
			page = (u64 *)FUNC12(gfp);

			if (!page)
				return NULL;

			__npte = FUNC6(level, FUNC14(page));

			/* pte could have been changed somewhere. */
			if (FUNC9(pte, __pte, __npte) != __pte)
				FUNC11((unsigned long)page);
			else if (FUNC2(__pte))
				*updated = true;

			continue;
		}

		/* No level skipping support yet */
		if (pte_level != level)
			return NULL;

		level -= 1;

		pte = FUNC1(__pte);

		if (pte_page && level == end_lvl)
			*pte_page = pte;

		pte = &pte[FUNC5(level, address)];
	}

	return pte;
}