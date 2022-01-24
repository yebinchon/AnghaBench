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
struct discard_load_info {scalar_t__ discard_end; scalar_t__ discard_begin; int /*<<< orphan*/  block_size; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  dm_dblock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct discard_load_info*) ; 

__attribute__((used)) static int FUNC2(void *context, sector_t discard_block_size,
			dm_dblock_t dblock, bool discard)
{
	struct discard_load_info *li = context;

	li->block_size = discard_block_size;

	if (discard) {
		if (FUNC0(dblock) == li->discard_end)
			/*
			 * We're already in a discard range, just extend it.
			 */
			li->discard_end = li->discard_end + 1ULL;

		else {
			/*
			 * Emit the old range and start a new one.
			 */
			FUNC1(li);
			li->discard_begin = FUNC0(dblock);
			li->discard_end = li->discard_begin + 1ULL;
		}
	} else {
		FUNC1(li);
		li->discard_begin = li->discard_end = 0;
	}

	return 0;
}