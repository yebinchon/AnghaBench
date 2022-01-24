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
typedef  int uint64_t ;
struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {int /*<<< orphan*/  dirty_cursor; int /*<<< orphan*/  hint_cursor; int /*<<< orphan*/  mapping_cursor; int /*<<< orphan*/  cache_blocks; int /*<<< orphan*/  dirty_root; int /*<<< orphan*/  dirty_info; int /*<<< orphan*/  hint_root; int /*<<< orphan*/  hint_info; int /*<<< orphan*/  root; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  load_mapping_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct dm_cache_metadata*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (struct dm_cache_metadata*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dm_cache_metadata*,struct dm_cache_policy*) ; 
 scalar_t__ FUNC11 (struct dm_cache_metadata*) ; 

__attribute__((used)) static int FUNC12(struct dm_cache_metadata *cmd,
			   struct dm_cache_policy *policy,
			   load_mapping_fn fn, void *context)
{
	int r;
	uint64_t cb;

	bool hints_valid = FUNC10(cmd, policy);

	if (FUNC9(cmd->cache_blocks) == 0)
		/* Nothing to do */
		return 0;

	r = FUNC3(&cmd->info, cmd->root, &cmd->mapping_cursor);
	if (r)
		return r;

	if (hints_valid) {
		r = FUNC3(&cmd->hint_info, cmd->hint_root, &cmd->hint_cursor);
		if (r) {
			FUNC4(&cmd->mapping_cursor);
			return r;
		}
	}

	if (FUNC11(cmd)) {
		r = FUNC6(&cmd->dirty_info, cmd->dirty_root,
					   FUNC9(cmd->cache_blocks),
					   &cmd->dirty_cursor);
		if (r) {
			FUNC4(&cmd->hint_cursor);
			FUNC4(&cmd->mapping_cursor);
			return r;
		}
	}

	for (cb = 0; ; cb++) {
		if (FUNC11(cmd))
			r = FUNC2(cmd, cb, hints_valid,
					      &cmd->mapping_cursor,
					      &cmd->hint_cursor,
					      &cmd->dirty_cursor,
					      fn, context);
		else
			r = FUNC1(cmd, cb, hints_valid,
					      &cmd->mapping_cursor, &cmd->hint_cursor,
					      fn, context);
		if (r)
			goto out;

		/*
		 * We need to break out before we move the cursors.
		 */
		if (cb >= (FUNC9(cmd->cache_blocks) - 1))
			break;

		r = FUNC5(&cmd->mapping_cursor);
		if (r) {
			FUNC0("dm_array_cursor_next for mapping failed");
			goto out;
		}

		if (hints_valid) {
			r = FUNC5(&cmd->hint_cursor);
			if (r) {
				FUNC4(&cmd->hint_cursor);
				hints_valid = false;
			}
		}

		if (FUNC11(cmd)) {
			r = FUNC8(&cmd->dirty_cursor);
			if (r) {
				FUNC0("dm_bitset_cursor_next for dirty failed");
				goto out;
			}
		}
	}
out:
	FUNC4(&cmd->mapping_cursor);
	if (hints_valid)
		FUNC4(&cmd->hint_cursor);

	if (FUNC11(cmd))
		FUNC7(&cmd->dirty_cursor);

	return r;
}