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
typedef  int /*<<< orphan*/  u64 ;
struct protection_domain {int mode; int /*<<< orphan*/ * pt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_MODE_7_LEVEL ; 
 size_t FUNC2 (int,unsigned long) ; 
 unsigned long FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 *FUNC7(struct protection_domain *domain,
		      unsigned long address,
		      unsigned long *page_size)
{
	int level;
	u64 *pte;

	*page_size = 0;

	if (address > FUNC3(domain->mode))
		return NULL;

	level	   =  domain->mode - 1;
	pte	   = &domain->pt_root[FUNC2(level, address)];
	*page_size =  FUNC5(level);

	while (level > 0) {

		/* Not Present */
		if (!FUNC1(*pte))
			return NULL;

		/* Large PTE */
		if (FUNC4(*pte) == 7 ||
		    FUNC4(*pte) == 0)
			break;

		/* No level skipping support yet */
		if (FUNC4(*pte) != level)
			return NULL;

		level -= 1;

		/* Walk to the next level */
		pte	   = FUNC0(*pte);
		pte	   = &pte[FUNC2(level, address)];
		*page_size = FUNC5(level);
	}

	/*
	 * If we have a series of large PTEs, make
	 * sure to return a pointer to the first one.
	 */
	if (FUNC4(*pte) == PAGE_MODE_7_LEVEL)
		pte = FUNC6(pte, page_size, NULL);

	return pte;
}