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
struct scatterlist {unsigned int length; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_SHIFT ; 
 unsigned long FUNC0 (struct page*) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 struct page* FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,struct page*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct scatterlist *FUNC4(struct scatterlist *sg,
						struct page **page_list,
						unsigned long npages,
						unsigned int max_seg_sz,
						int *nents)
{
	unsigned long first_pfn;
	unsigned long i = 0;
	bool update_cur_sg = false;
	bool first = !FUNC2(sg);

	/* Check if new page_list is contiguous with end of previous page_list.
	 * sg->length here is a multiple of PAGE_SIZE and sg->offset is 0.
	 */
	if (!first && (FUNC0(FUNC2(sg)) + (sg->length >> PAGE_SHIFT) ==
		       FUNC0(page_list[0])))
		update_cur_sg = true;

	while (i != npages) {
		unsigned long len;
		struct page *first_page = page_list[i];

		first_pfn = FUNC0(first_page);

		/* Compute the number of contiguous pages we have starting
		 * at i
		 */
		for (len = 0; i != npages &&
			      first_pfn + len == FUNC0(page_list[i]) &&
			      len < (max_seg_sz >> PAGE_SHIFT);
		     len++)
			i++;

		/* Squash N contiguous pages from page_list into current sge */
		if (update_cur_sg) {
			if ((max_seg_sz - sg->length) >= (len << PAGE_SHIFT)) {
				FUNC3(sg, FUNC2(sg),
					    sg->length + (len << PAGE_SHIFT),
					    0);
				update_cur_sg = false;
				continue;
			}
			update_cur_sg = false;
		}

		/* Squash N contiguous pages into next sge or first sge */
		if (!first)
			sg = FUNC1(sg);

		(*nents)++;
		FUNC3(sg, first_page, len << PAGE_SHIFT, 0);
		first = false;
	}

	return sg;
}