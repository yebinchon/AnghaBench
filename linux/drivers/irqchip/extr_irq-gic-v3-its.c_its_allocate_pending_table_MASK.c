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
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  LPI_PENDBASE_SZ ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static struct page *FUNC4(gfp_t gfp_flags)
{
	struct page *pend_page;

	pend_page = FUNC0(gfp_flags | __GFP_ZERO,
				FUNC1(LPI_PENDBASE_SZ));
	if (!pend_page)
		return NULL;

	/* Make sure the GIC will observe the zero-ed page */
	FUNC2(FUNC3(pend_page), LPI_PENDBASE_SZ);

	return pend_page;
}