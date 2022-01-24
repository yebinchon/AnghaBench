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
struct discard_load_info {int discard_begin; int discard_end; int block_size; TYPE_1__* cache; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_block_size; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct discard_load_info *li)
{
	sector_t b, e;

	if (li->discard_begin == li->discard_end)
		return;

	/*
	 * Convert to sectors.
	 */
	b = li->discard_begin * li->block_size;
	e = li->discard_end * li->block_size;

	/*
	 * Then convert back to the current dblock size.
	 */
	b = FUNC0(b, li->cache->discard_block_size);
	FUNC2(e, li->cache->discard_block_size);

	/*
	 * The origin may have shrunk, so we need to check we're still in
	 * bounds.
	 */
	if (e > FUNC1(li->cache->discard_nr_blocks))
		e = FUNC1(li->cache->discard_nr_blocks);

	for (; b < e; b++)
		FUNC3(li->cache, FUNC4(b));
}