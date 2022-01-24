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
struct cache {scalar_t__ cache_size; } ;
typedef  scalar_t__ dm_cblock_t ;
typedef  int dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct cache *cache, dm_cblock_t size)
{
	dm_block_t nr_blocks = FUNC1(size);

	if (nr_blocks > (1 << 20) && cache->cache_size != size)
		FUNC0("You have created a cache device with a lot of individual cache blocks (%llu)\n"
			     "All these mappings can consume a lot of kernel memory, and take some time to read/write.\n"
			     "Please consider increasing the cache block size to reduce the overall cache block count.",
			     (unsigned long long) nr_blocks);

	cache->cache_size = size;
}