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
struct dm_clone_metadata {int /*<<< orphan*/  bm; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DM_CLONE_MAX_CONCURRENT_LOCKS ; 
 int DM_CLONE_METADATA_BLOCK_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 int FUNC3 (struct dm_clone_metadata*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dm_clone_metadata *cmd,
					       bool may_format_device)
{
	int r;

	/* Create block manager */
	cmd->bm = FUNC4(cmd->bdev,
					 DM_CLONE_METADATA_BLOCK_SIZE << SECTOR_SHIFT,
					 DM_CLONE_MAX_CONCURRENT_LOCKS);
	if (FUNC1(cmd->bm)) {
		FUNC0("Failed to create block manager");
		return FUNC2(cmd->bm);
	}

	r = FUNC3(cmd, may_format_device);
	if (r)
		FUNC5(cmd->bm);

	return r;
}