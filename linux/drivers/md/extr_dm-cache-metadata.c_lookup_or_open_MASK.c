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
struct dm_cache_metadata {int /*<<< orphan*/  list; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dm_cache_metadata* FUNC4 (struct block_device*) ; 
 struct dm_cache_metadata* FUNC5 (struct block_device*,int /*<<< orphan*/ ,int,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  table ; 
 int /*<<< orphan*/  table_lock ; 

__attribute__((used)) static struct dm_cache_metadata *FUNC8(struct block_device *bdev,
						sector_t data_block_size,
						bool may_format_device,
						size_t policy_hint_size,
						unsigned metadata_version)
{
	struct dm_cache_metadata *cmd, *cmd2;

	FUNC6(&table_lock);
	cmd = FUNC4(bdev);
	FUNC7(&table_lock);

	if (cmd)
		return cmd;

	cmd = FUNC5(bdev, data_block_size, may_format_device,
			    policy_hint_size, metadata_version);
	if (!FUNC0(cmd)) {
		FUNC6(&table_lock);
		cmd2 = FUNC4(bdev);
		if (cmd2) {
			FUNC7(&table_lock);
			FUNC1(cmd);
			FUNC2(cmd);
			return cmd2;
		}
		FUNC3(&cmd->list, &table);
		FUNC7(&table_lock);
	}

	return cmd;
}