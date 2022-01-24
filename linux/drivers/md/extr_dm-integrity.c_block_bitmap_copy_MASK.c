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
struct page_list {int /*<<< orphan*/  page; } ;
struct dm_integrity_c {int /*<<< orphan*/  n_bitmap_blocks; } ;

/* Variables and functions */
 int BITMAP_BLOCK_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long*) ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dm_integrity_c *ic, struct page_list *dst, struct page_list *src)
{
	unsigned n_bitmap_pages = FUNC0(ic->n_bitmap_blocks, PAGE_SIZE / BITMAP_BLOCK_SIZE);
	unsigned i;

	for (i = 0; i < n_bitmap_pages; i++) {
		unsigned long *dst_data = FUNC2(dst[i].page);
		unsigned long *src_data = FUNC2(src[i].page);
		FUNC1(dst_data, src_data);
	}
}