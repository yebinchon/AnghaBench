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
typedef  int /*<<< orphan*/  u32 ;
struct vmw_piter {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long PAGE_SIZE ; 
 unsigned long VMW_PPN_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_piter*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_piter*) ; 
 struct page* FUNC8 (struct vmw_piter*) ; 

__attribute__((used)) static unsigned long FUNC9(struct vmw_piter *data_iter,
				      unsigned long num_data_pages,
				      struct vmw_piter *pt_iter)
{
	unsigned long pt_size = num_data_pages * VMW_PPN_SIZE;
	unsigned long num_pt_pages = FUNC0(pt_size, PAGE_SIZE);
	unsigned long pt_page;
	u32 *addr, *save_addr;
	unsigned long i;
	struct page *page;

	for (pt_page = 0; pt_page < num_pt_pages; ++pt_page) {
		page = FUNC8(pt_iter);

		save_addr = addr = FUNC2(page);

		for (i = 0; i < PAGE_SIZE / VMW_PPN_SIZE; ++i) {
			FUNC5(&addr,
					   FUNC6(data_iter));
			if (FUNC4(--num_data_pages == 0))
				break;
			FUNC1(!FUNC7(data_iter));
		}
		FUNC3(save_addr);
		FUNC7(pt_iter);
	}

	return num_pt_pages;
}