#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct dmz_metadata {int nr_meta_zones; int mblk_primary; scalar_t__ sb_gen; TYPE_2__* dev; TYPE_1__* sb; int /*<<< orphan*/  sb_zone; } ;
struct TYPE_7__ {int /*<<< orphan*/  gen; } ;
struct TYPE_6__ {int zone_nr_blocks_shift; } ;
struct TYPE_5__ {TYPE_4__* sb; scalar_t__ block; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct dmz_metadata*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (struct dmz_metadata*,int) ; 
 int FUNC4 (struct dmz_metadata*) ; 
 int FUNC5 (struct dmz_metadata*,int) ; 
 scalar_t__ FUNC6 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dmz_metadata *zmd)
{
	bool sb_good[2] = {false, false};
	u64 sb_gen[2] = {0, 0};
	int ret;

	/* Read and check the primary super block */
	zmd->sb[0].block = FUNC6(zmd, zmd->sb_zone);
	ret = FUNC3(zmd, 0);
	if (ret) {
		FUNC2(zmd->dev, "Read primary super block failed");
		return ret;
	}

	ret = FUNC0(zmd, zmd->sb[0].sb);

	/* Read and check secondary super block */
	if (ret == 0) {
		sb_good[0] = true;
		zmd->sb[1].block = zmd->sb[0].block +
			(zmd->nr_meta_zones << zmd->dev->zone_nr_blocks_shift);
		ret = FUNC3(zmd, 1);
	} else
		ret = FUNC4(zmd);

	if (ret) {
		FUNC2(zmd->dev, "Read secondary super block failed");
		return ret;
	}

	ret = FUNC0(zmd, zmd->sb[1].sb);
	if (ret == 0)
		sb_good[1] = true;

	/* Use highest generation sb first */
	if (!sb_good[0] && !sb_good[1]) {
		FUNC2(zmd->dev, "No valid super block found");
		return -EIO;
	}

	if (sb_good[0])
		sb_gen[0] = FUNC7(zmd->sb[0].sb->gen);
	else
		ret = FUNC5(zmd, 0);

	if (sb_good[1])
		sb_gen[1] = FUNC7(zmd->sb[1].sb->gen);
	else
		ret = FUNC5(zmd, 1);

	if (ret) {
		FUNC2(zmd->dev, "Recovery failed");
		return -EIO;
	}

	if (sb_gen[0] >= sb_gen[1]) {
		zmd->sb_gen = sb_gen[0];
		zmd->mblk_primary = 0;
	} else {
		zmd->sb_gen = sb_gen[1];
		zmd->mblk_primary = 1;
	}

	FUNC1(zmd->dev, "Using super block %u (gen %llu)",
		      zmd->mblk_primary, zmd->sb_gen);

	return 0;
}