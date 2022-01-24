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
struct dm_cache_metadata {int changed; int /*<<< orphan*/  dirty_root; int /*<<< orphan*/  dirty_info; int /*<<< orphan*/  cache_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is_dirty_callback ; 

__attribute__((used)) static int FUNC4(struct dm_cache_metadata *cmd, unsigned nr_bits, unsigned long *bits)
{
	int r = 0;

	/* nr_bits is really just a sanity check */
	if (nr_bits != FUNC3(cmd->cache_blocks)) {
		FUNC0("dirty bitset is wrong size");
		return -EINVAL;
	}

	r = FUNC1(&cmd->dirty_info, cmd->dirty_root);
	if (r)
		return r;

	cmd->changed = true;
	return FUNC2(&cmd->dirty_info, &cmd->dirty_root, nr_bits, is_dirty_callback, bits);
}