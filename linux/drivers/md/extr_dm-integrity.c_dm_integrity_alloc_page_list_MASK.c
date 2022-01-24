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
struct page_list {struct page_list* next; int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page_list*) ; 
 struct page_list* FUNC2 (unsigned int,int,int) ; 

__attribute__((used)) static struct page_list *FUNC3(unsigned n_pages)
{
	struct page_list *pl;
	unsigned i;

	pl = FUNC2(n_pages + 1, sizeof(struct page_list), GFP_KERNEL | __GFP_ZERO);
	if (!pl)
		return NULL;

	for (i = 0; i < n_pages; i++) {
		pl[i].page = FUNC0(GFP_KERNEL);
		if (!pl[i].page) {
			FUNC1(pl);
			return NULL;
		}
		if (i)
			pl[i - 1].next = &pl[i];
	}
	pl[i].page = NULL;
	pl[i].next = NULL;

	return pl;
}