#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page_list {struct page* page; } ;
struct page {int dummy; } ;
struct journal_completion {int /*<<< orphan*/  in_flight; } ;
struct dm_integrity_c {unsigned int journal_section_sectors; TYPE_1__* journal_xor; struct page_list* journal; struct page_list* journal_io; } ;
struct async_submit_ctl {int dummy; } ;
struct TYPE_2__ {struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_TX_XOR_ZERO_DST ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 size_t SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct page**,unsigned int,int,size_t,struct async_submit_ctl*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  complete_journal_op ; 
 int /*<<< orphan*/  FUNC4 (struct async_submit_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct journal_completion*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 size_t FUNC6 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_integrity_c*,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int FUNC8 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_integrity_c*,unsigned int,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct dm_integrity_c *ic, bool encrypt, unsigned section,
			unsigned n_sections, struct journal_completion *comp)
{
	struct async_submit_ctl submit;
	size_t n_bytes = (size_t)(n_sections * ic->journal_section_sectors) << SECTOR_SHIFT;
	unsigned pl_index, pl_offset, section_index;
	struct page_list *source_pl, *target_pl;

	if (FUNC5(encrypt)) {
		source_pl = ic->journal;
		target_pl = ic->journal_io;
	} else {
		source_pl = ic->journal_io;
		target_pl = ic->journal;
	}

	FUNC7(ic, section, 0, &pl_index, &pl_offset);

	FUNC3(FUNC8(pl_offset + n_bytes, PAGE_SIZE) >> PAGE_SHIFT, &comp->in_flight);

	FUNC4(&submit, ASYNC_TX_XOR_ZERO_DST, NULL, complete_journal_op, comp, NULL);

	section_index = pl_index;

	do {
		size_t this_step;
		struct page *src_pages[2];
		struct page *dst_page;

		while (FUNC10(pl_index == section_index)) {
			unsigned dummy;
			if (FUNC5(encrypt))
				FUNC9(ic, section, true);
			section++;
			n_sections--;
			if (!n_sections)
				break;
			FUNC7(ic, section, 0, &section_index, &dummy);
		}

		this_step = FUNC6(n_bytes, (size_t)PAGE_SIZE - pl_offset);
		dst_page = target_pl[pl_index].page;
		src_pages[0] = source_pl[pl_index].page;
		src_pages[1] = ic->journal_xor[pl_index].page;

		FUNC2(dst_page, src_pages, pl_offset, 2, this_step, &submit);

		pl_index++;
		pl_offset = 0;
		n_bytes -= this_step;
	} while (n_bytes);

	FUNC0(n_sections);

	FUNC1();
}