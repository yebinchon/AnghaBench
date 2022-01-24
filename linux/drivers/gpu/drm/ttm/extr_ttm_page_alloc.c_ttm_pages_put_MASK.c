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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 scalar_t__ FUNC2 (struct page**,unsigned int) ; 
 scalar_t__ FUNC3 (struct page*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct page *pages[], unsigned npages,
		unsigned int order)
{
	unsigned int i, pages_nr = (1 << order);

	if (order == 0) {
		if (FUNC2(pages, npages))
			FUNC1("Failed to set %d pages to wb!\n", npages);
	}

	for (i = 0; i < npages; ++i) {
		if (order > 0) {
			if (FUNC3(pages[i], pages_nr))
				FUNC1("Failed to set %d pages to wb!\n", pages_nr);
		}
		FUNC0(pages[i], order);
	}
}