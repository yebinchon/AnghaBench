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
struct pagevec {size_t nr; struct page** pages; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct pagevec*) ; 

__attribute__((used)) static void *FUNC3(struct pagevec *pv, gfp_t gfp)
{
	struct page *p;

	p = FUNC0(gfp);
	if (!p && FUNC2(pv))
		p = pv->pages[--pv->nr];

	return p ? FUNC1(p) : NULL;
}