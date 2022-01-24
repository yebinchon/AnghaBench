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
struct dm_cache_metadata {int clean_when_opened; int /*<<< orphan*/  metadata_sm; int /*<<< orphan*/  tm; scalar_t__ discard_nr_blocks; scalar_t__ discard_block_size; int /*<<< orphan*/  discard_root; int /*<<< orphan*/  discard_info; int /*<<< orphan*/  dirty_root; int /*<<< orphan*/  dirty_info; int /*<<< orphan*/  root; int /*<<< orphan*/  info; int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SUPERBLOCK_LOCATION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int FUNC2 (struct dm_cache_metadata*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct dm_cache_metadata*) ; 

__attribute__((used)) static int FUNC10(struct dm_cache_metadata *cmd)
{
	int r;

	r = FUNC7(cmd->bm, CACHE_SUPERBLOCK_LOCATION,
				 &cmd->tm, &cmd->metadata_sm);
	if (r < 0) {
		FUNC0("tm_create_with_sm failed");
		return r;
	}

	FUNC1(cmd);

	r = FUNC3(&cmd->info, &cmd->root);
	if (r < 0)
		goto bad;

	if (FUNC9(cmd)) {
		FUNC5(cmd->tm, &cmd->dirty_info);
		r = FUNC4(&cmd->dirty_info, &cmd->dirty_root);
		if (r < 0)
			goto bad;
	}

	FUNC5(cmd->tm, &cmd->discard_info);
	r = FUNC4(&cmd->discard_info, &cmd->discard_root);
	if (r < 0)
		goto bad;

	cmd->discard_block_size = 0;
	cmd->discard_nr_blocks = 0;

	r = FUNC2(cmd);
	if (r)
		goto bad;

	cmd->clean_when_opened = true;
	return 0;

bad:
	FUNC8(cmd->tm);
	FUNC6(cmd->metadata_sm);

	return r;
}