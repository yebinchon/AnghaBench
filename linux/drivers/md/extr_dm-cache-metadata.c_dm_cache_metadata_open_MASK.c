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
struct dm_cache_metadata {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct dm_cache_metadata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_cache_metadata*) ; 
 struct dm_cache_metadata* FUNC3 (struct block_device*,int /*<<< orphan*/ ,int,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_cache_metadata*,int /*<<< orphan*/ ) ; 

struct dm_cache_metadata *FUNC5(struct block_device *bdev,
						 sector_t data_block_size,
						 bool may_format_device,
						 size_t policy_hint_size,
						 unsigned metadata_version)
{
	struct dm_cache_metadata *cmd = FUNC3(bdev, data_block_size, may_format_device,
						       policy_hint_size, metadata_version);

	if (!FUNC1(cmd) && !FUNC4(cmd, data_block_size)) {
		FUNC2(cmd);
		return FUNC0(-EINVAL);
	}

	return cmd;
}