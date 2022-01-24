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
struct dm_bufio_client {scalar_t__ block_size; scalar_t__ sectors_per_block_bits; int /*<<< orphan*/ * slab_cache; } ;
typedef  int gfp_t ;

/* Variables and functions */
 unsigned char DATA_MODE_GET_FREE_PAGES ; 
 unsigned char DATA_MODE_SLAB ; 
 unsigned char DATA_MODE_VMALLOC ; 
 scalar_t__ KMALLOC_MAX_SIZE ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ SECTOR_SHIFT ; 
 int __GFP_NORETRY ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 void* FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(struct dm_bufio_client *c, gfp_t gfp_mask,
			       unsigned char *data_mode)
{
	if (FUNC5(c->slab_cache != NULL)) {
		*data_mode = DATA_MODE_SLAB;
		return FUNC2(c->slab_cache, gfp_mask);
	}

	if (c->block_size <= KMALLOC_MAX_SIZE &&
	    gfp_mask & __GFP_NORETRY) {
		*data_mode = DATA_MODE_GET_FREE_PAGES;
		return (void *)FUNC0(gfp_mask,
						c->sectors_per_block_bits - (PAGE_SHIFT - SECTOR_SHIFT));
	}

	*data_mode = DATA_MODE_VMALLOC;

	/*
	 * __vmalloc allocates the data pages and auxiliary structures with
	 * gfp_flags that were specified, but pagetables are always allocated
	 * with GFP_KERNEL, no matter what was specified as gfp_mask.
	 *
	 * Consequently, we must set per-process flag PF_MEMALLOC_NOIO so that
	 * all allocations done by this process (including pagetables) are done
	 * as if GFP_NOIO was specified.
	 */
	if (gfp_mask & __GFP_NORETRY) {
		unsigned noio_flag = FUNC4();
		void *ptr = FUNC1(c->block_size, gfp_mask, PAGE_KERNEL);

		FUNC3(noio_flag);
		return ptr;
	}

	return FUNC1(c->block_size, gfp_mask, PAGE_KERNEL);
}