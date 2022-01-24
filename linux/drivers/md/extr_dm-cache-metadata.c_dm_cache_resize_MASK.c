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
struct dm_cache_metadata {int changed; int /*<<< orphan*/  cache_blocks; int /*<<< orphan*/  dirty_root; int /*<<< orphan*/  dirty_info; int /*<<< orphan*/  root; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dm_cache_metadata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct dm_cache_metadata*) ; 

int FUNC11(struct dm_cache_metadata *cmd, dm_cblock_t new_cache_size)
{
	int r;
	bool clean;
	__le64 null_mapping = FUNC9(0, 0);

	FUNC1(cmd);
	FUNC3(&null_mapping);

	if (FUNC8(new_cache_size) < FUNC8(cmd->cache_blocks)) {
		r = FUNC5(cmd, new_cache_size, cmd->cache_blocks, &clean);
		if (r) {
			FUNC4(&null_mapping);
			goto out;
		}

		if (!clean) {
			FUNC0("unable to shrink cache due to dirty blocks");
			r = -EINVAL;
			FUNC4(&null_mapping);
			goto out;
		}
	}

	r = FUNC6(&cmd->info, cmd->root, FUNC8(cmd->cache_blocks),
			    FUNC8(new_cache_size),
			    &null_mapping, &cmd->root);
	if (r)
		goto out;

	if (FUNC10(cmd)) {
		r = FUNC7(&cmd->dirty_info, cmd->dirty_root,
				     FUNC8(cmd->cache_blocks), FUNC8(new_cache_size),
				     false, &cmd->dirty_root);
		if (r)
			goto out;
	}

	cmd->cache_blocks = new_cache_size;
	cmd->changed = true;

out:
	FUNC2(cmd);

	return r;
}