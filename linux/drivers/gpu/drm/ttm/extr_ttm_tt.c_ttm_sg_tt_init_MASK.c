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
typedef  int uint32_t ;
struct ttm_tt {int dummy; } ;
struct ttm_dma_tt {int /*<<< orphan*/  pages_list; struct ttm_tt ttm; } ;
struct ttm_buffer_object {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TTM_PAGE_FLAG_SG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct ttm_dma_tt*) ; 
 int FUNC3 (struct ttm_dma_tt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_tt*,struct ttm_buffer_object*,int) ; 

int FUNC6(struct ttm_dma_tt *ttm_dma, struct ttm_buffer_object *bo,
		   uint32_t page_flags)
{
	struct ttm_tt *ttm = &ttm_dma->ttm;
	int ret;

	FUNC5(ttm, bo, page_flags);

	FUNC0(&ttm_dma->pages_list);
	if (page_flags & TTM_PAGE_FLAG_SG)
		ret = FUNC3(ttm_dma);
	else
		ret = FUNC2(ttm_dma);
	if (ret) {
		FUNC4(ttm);
		FUNC1("Failed allocating page table\n");
		return -ENOMEM;
	}
	return 0;
}