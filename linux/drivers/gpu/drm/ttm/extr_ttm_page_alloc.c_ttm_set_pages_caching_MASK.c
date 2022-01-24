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
typedef  enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
#define  tt_uncached 129 
#define  tt_wc 128 
 int FUNC1 (struct page**,unsigned int) ; 
 int FUNC2 (struct page**,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct page **pages,
		enum ttm_caching_state cstate, unsigned cpages)
{
	int r = 0;
	/* Set page caching */
	switch (cstate) {
	case tt_uncached:
		r = FUNC1(pages, cpages);
		if (r)
			FUNC0("Failed to set %d pages to uc!\n", cpages);
		break;
	case tt_wc:
		r = FUNC2(pages, cpages);
		if (r)
			FUNC0("Failed to set %d pages to wc!\n", cpages);
		break;
	default:
		break;
	}
	return r;
}