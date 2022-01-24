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
typedef  int /*<<< orphan*/  uint64_t ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_zone {int dummy; } ;
struct ttm_mem_global {struct ttm_mem_zone* zone_kernel; scalar_t__ zone_dma32; struct ttm_mem_zone* zone_highmem; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int FUNC2 (struct ttm_mem_global*,struct ttm_mem_zone*,int /*<<< orphan*/ ,struct ttm_operation_ctx*) ; 

int FUNC3(struct ttm_mem_global *glob,
			      struct page *page, uint64_t size,
			      struct ttm_operation_ctx *ctx)
{
	struct ttm_mem_zone *zone = NULL;

	/**
	 * Page allocations may be registed in a single zone
	 * only if highmem or !dma32.
	 */

#ifdef CONFIG_HIGHMEM
	if (PageHighMem(page) && glob->zone_highmem != NULL)
		zone = glob->zone_highmem;
#else
	if (glob->zone_dma32 && FUNC1(page) > 0x00100000UL)
		zone = glob->zone_kernel;
#endif
	return FUNC2(glob, zone, size, ctx);
}