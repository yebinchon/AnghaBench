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
struct page {struct nouveau_dmem_chunk* zone_device_data; } ;
struct nouveau_dmem_chunk {unsigned long pfn_first; int /*<<< orphan*/  lock; int /*<<< orphan*/  callocated; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct page *page)
{
	struct nouveau_dmem_chunk *chunk = page->zone_device_data;
	unsigned long idx = FUNC2(page) - chunk->pfn_first;

	/*
	 * FIXME:
	 *
	 * This is really a bad example, we need to overhaul nouveau memory
	 * management to be more page focus and allow lighter locking scheme
	 * to be use in the process.
	 */
	FUNC3(&chunk->lock);
	FUNC1(idx, chunk->bitmap);
	FUNC0(!chunk->callocated);
	chunk->callocated--;
	/*
	 * FIXME when chunk->callocated reach 0 we should add the chunk to
	 * a reclaim list so that it can be freed in case of memory pressure.
	 */
	FUNC4(&chunk->lock);
}