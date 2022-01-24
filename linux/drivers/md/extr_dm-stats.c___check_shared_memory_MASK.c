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

/* Variables and functions */
 int DM_STATS_MEMORY_FACTOR ; 
 size_t DM_STATS_VMALLOC_FACTOR ; 
 int PAGE_SHIFT ; 
 size_t VMALLOC_END ; 
 size_t VMALLOC_START ; 
 size_t shared_memory_amount ; 
 int FUNC0 () ; 

__attribute__((used)) static bool FUNC1(size_t alloc_size)
{
	size_t a;

	a = shared_memory_amount + alloc_size;
	if (a < shared_memory_amount)
		return false;
	if (a >> PAGE_SHIFT > FUNC0() / DM_STATS_MEMORY_FACTOR)
		return false;
#ifdef CONFIG_MMU
	if (a > (VMALLOC_END - VMALLOC_START) / DM_STATS_VMALLOC_FACTOR)
		return false;
#endif
	return true;
}