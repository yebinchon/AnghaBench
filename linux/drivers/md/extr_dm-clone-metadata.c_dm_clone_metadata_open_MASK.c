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
struct dm_clone_metadata {int fail_io; int hydration_done; int /*<<< orphan*/  region_map; int /*<<< orphan*/  nr_regions; scalar_t__ read_only; int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  nr_words; void* region_size; void* target_size; struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef  void* sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 struct dm_clone_metadata* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC3 (struct dm_clone_metadata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_clone_metadata*) ; 
 int FUNC5 (struct dm_clone_metadata*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dm_clone_metadata* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

struct dm_clone_metadata *FUNC16(struct block_device *bdev,
						 sector_t target_size,
						 sector_t region_size)
{
	int r;
	struct dm_clone_metadata *cmd;

	cmd = FUNC14(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		FUNC1("Failed to allocate memory for dm-clone metadata");
		return FUNC2(-ENOMEM);
	}

	cmd->bdev = bdev;
	cmd->target_size = target_size;
	cmd->region_size = region_size;
	cmd->nr_regions = FUNC9(cmd->target_size, cmd->region_size);
	cmd->nr_words = FUNC0(cmd->nr_regions);

	FUNC10(&cmd->lock);
	FUNC15(&cmd->bitmap_lock);
	cmd->read_only = 0;
	cmd->fail_io = false;
	cmd->hydration_done = false;

	cmd->region_map = FUNC13(FUNC7(cmd->nr_regions), GFP_KERNEL);
	if (!cmd->region_map) {
		FUNC1("Failed to allocate memory for region bitmap");
		r = -ENOMEM;
		goto out_with_md;
	}

	r = FUNC3(cmd, true);
	if (r)
		goto out_with_region_map;

	r = FUNC5(cmd);
	if (r) {
		FUNC1("Failed to load on-disk region map");
		goto out_with_pds;
	}

	r = FUNC8(cmd);
	if (r)
		goto out_with_pds;

	if (FUNC6(cmd->region_map, cmd->nr_regions))
		cmd->hydration_done = true;

	return cmd;

out_with_pds:
	FUNC4(cmd);

out_with_region_map:
	FUNC12(cmd->region_map);

out_with_md:
	FUNC11(cmd);

	return FUNC2(r);
}