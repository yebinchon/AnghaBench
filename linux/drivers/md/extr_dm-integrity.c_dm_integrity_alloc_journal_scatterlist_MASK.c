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
struct scatterlist {int dummy; } ;
struct page_list {int /*<<< orphan*/  page; } ;
struct dm_integrity_c {unsigned int journal_sections; scalar_t__ journal_section_sectors; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int SECTOR_SHIFT ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct dm_integrity_c*,struct scatterlist**) ; 
 void* FUNC1 (unsigned int,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_integrity_c*,unsigned int,scalar_t__,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,char*,unsigned int) ; 

__attribute__((used)) static struct scatterlist **FUNC6(struct dm_integrity_c *ic,
								   struct page_list *pl)
{
	struct scatterlist **sl;
	unsigned i;

	sl = FUNC1(ic->journal_sections,
			    sizeof(struct scatterlist *),
			    GFP_KERNEL | __GFP_ZERO);
	if (!sl)
		return NULL;

	for (i = 0; i < ic->journal_sections; i++) {
		struct scatterlist *s;
		unsigned start_index, start_offset;
		unsigned end_index, end_offset;
		unsigned n_pages;
		unsigned idx;

		FUNC3(ic, i, 0, &start_index, &start_offset);
		FUNC3(ic, i, ic->journal_section_sectors - 1,
				   &end_index, &end_offset);

		n_pages = (end_index - start_index + 1);

		s = FUNC1(n_pages, sizeof(struct scatterlist),
				   GFP_KERNEL);
		if (!s) {
			FUNC0(ic, sl);
			return NULL;
		}

		FUNC4(s, n_pages);
		for (idx = start_index; idx <= end_index; idx++) {
			char *va = FUNC2(pl[idx].page);
			unsigned start = 0, end = PAGE_SIZE;
			if (idx == start_index)
				start = start_offset;
			if (idx == end_index)
				end = end_offset + (1 << SECTOR_SHIFT);
			FUNC5(&s[idx - start_index], va + start, end - start);
		}

		sl[i] = s;
	}

	return sl;
}