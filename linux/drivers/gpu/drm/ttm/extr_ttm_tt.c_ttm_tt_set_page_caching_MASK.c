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
 scalar_t__ FUNC0 (struct page*) ; 
 int tt_cached ; 
 int tt_uncached ; 
 int tt_wc ; 
 int FUNC1 (struct page*,int) ; 
 int FUNC2 (struct page*,int) ; 
 int FUNC3 (struct page*,int) ; 

__attribute__((used)) static int FUNC4(struct page *p,
				   enum ttm_caching_state c_old,
				   enum ttm_caching_state c_new)
{
	int ret = 0;

	if (FUNC0(p))
		return 0;

	if (c_old != tt_cached) {
		/* p isn't in the default caching state, set it to
		 * writeback first to free its current memtype. */

		ret = FUNC2(p, 1);
		if (ret)
			return ret;
	}

	if (c_new == tt_wc)
		ret = FUNC3(p, 1);
	else if (c_new == tt_uncached)
		ret = FUNC1(p, 1);

	return ret;
}