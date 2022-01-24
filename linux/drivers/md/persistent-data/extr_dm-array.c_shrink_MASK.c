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
struct resize {scalar_t__ new_nr_full_blocks; scalar_t__ old_nr_full_blocks; int /*<<< orphan*/  info; int /*<<< orphan*/  new_nr_entries_in_last_block; int /*<<< orphan*/  root; int /*<<< orphan*/  old_nr_entries_in_last_block; } ;
struct dm_block {int dummy; } ;
struct array_block {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct resize*,unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,struct dm_block**,struct array_block**) ; 
 unsigned int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct array_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dm_block*) ; 

__attribute__((used)) static int FUNC5(struct resize *resize)
{
	int r;
	unsigned begin, end;
	struct dm_block *block;
	struct array_block *ab;

	/*
	 * Lose some blocks from the back?
	 */
	if (resize->new_nr_full_blocks < resize->old_nr_full_blocks) {
		begin = FUNC2(resize->new_nr_full_blocks,
					       resize->new_nr_entries_in_last_block);
		end = FUNC2(resize->old_nr_full_blocks,
					     resize->old_nr_entries_in_last_block);

		r = FUNC0(resize, begin, end);
		if (r)
			return r;
	}

	/*
	 * Trim the new tail block
	 */
	if (resize->new_nr_entries_in_last_block) {
		r = FUNC1(resize->info, &resize->root,
				  resize->new_nr_full_blocks, &block, &ab);
		if (r)
			return r;

		FUNC3(resize->info, ab, resize->new_nr_entries_in_last_block);
		FUNC4(resize->info, block);
	}

	return 0;
}