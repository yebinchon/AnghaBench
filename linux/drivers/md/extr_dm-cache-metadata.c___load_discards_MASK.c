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
struct dm_cache_metadata {int /*<<< orphan*/  discard_block_size; int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_root; int /*<<< orphan*/  discard_info; scalar_t__ clean_when_opened; } ;
struct dm_bitset_cursor {int dummy; } ;
typedef  int (* load_discard_fn ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct dm_bitset_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_bitset_cursor*) ; 
 int FUNC2 (struct dm_bitset_cursor*) ; 
 int FUNC3 (struct dm_bitset_cursor*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct dm_cache_metadata *cmd,
			   load_discard_fn fn, void *context)
{
	int r = 0;
	uint32_t b;
	struct dm_bitset_cursor c;

	if (FUNC5(cmd->discard_nr_blocks) == 0)
		/* nothing to do */
		return 0;

	if (cmd->clean_when_opened) {
		r = FUNC4(&cmd->discard_info, cmd->discard_root, &cmd->discard_root);
		if (r)
			return r;

		r = FUNC0(&cmd->discard_info, cmd->discard_root,
					   FUNC5(cmd->discard_nr_blocks), &c);
		if (r)
			return r;

		for (b = 0; ; b++) {
			r = fn(context, cmd->discard_block_size, FUNC6(b),
			       FUNC2(&c));
			if (r)
				break;

			if (b >= (FUNC5(cmd->discard_nr_blocks) - 1))
				break;

			r = FUNC3(&c);
			if (r)
				break;
		}

		FUNC1(&c);

	} else {
		for (b = 0; b < FUNC5(cmd->discard_nr_blocks); b++) {
			r = fn(context, cmd->discard_block_size, FUNC6(b), false);
			if (r)
				return r;
		}
	}

	return r;
}