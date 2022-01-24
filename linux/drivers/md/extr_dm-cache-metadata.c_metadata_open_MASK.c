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
struct dm_cache_metadata {unsigned int version; size_t policy_hint_size; int changed; int fail_io; scalar_t__ cache_blocks; int /*<<< orphan*/  data_block_size; struct block_device* bdev; int /*<<< orphan*/  root_lock; int /*<<< orphan*/  ref_count; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 struct dm_cache_metadata* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct dm_cache_metadata*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dm_cache_metadata*,int) ; 
 int /*<<< orphan*/  clear_clean_shutdown ; 
 int /*<<< orphan*/  FUNC4 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_cache_metadata*) ; 
 struct dm_cache_metadata* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct dm_cache_metadata *FUNC9(struct block_device *bdev,
					       sector_t data_block_size,
					       bool may_format_device,
					       size_t policy_hint_size,
					       unsigned metadata_version)
{
	int r;
	struct dm_cache_metadata *cmd;

	cmd = FUNC7(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		FUNC0("could not allocate metadata struct");
		return FUNC1(-ENOMEM);
	}

	cmd->version = metadata_version;
	FUNC8(&cmd->ref_count, 1);
	FUNC5(&cmd->root_lock);
	cmd->bdev = bdev;
	cmd->data_block_size = data_block_size;
	cmd->cache_blocks = 0;
	cmd->policy_hint_size = policy_hint_size;
	cmd->changed = true;
	cmd->fail_io = false;

	r = FUNC3(cmd, may_format_device);
	if (r) {
		FUNC6(cmd);
		return FUNC1(r);
	}

	r = FUNC2(cmd, clear_clean_shutdown);
	if (r < 0) {
		FUNC4(cmd);
		return FUNC1(r);
	}

	return cmd;
}