#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int /*<<< orphan*/  queue; } ;
struct dm_target {int /*<<< orphan*/  table; } ;
struct dm_integrity_c {TYPE_1__* sb; int /*<<< orphan*/  tag_size; } ;
struct blk_integrity {scalar_t__ interval_exp; int /*<<< orphan*/  tuple_size; int /*<<< orphan*/  tag_size; int /*<<< orphan*/ * profile; } ;
typedef  int /*<<< orphan*/  bi ;
struct TYPE_2__ {scalar_t__ log2_sectors_per_block; } ;

/* Variables and functions */
 scalar_t__ SECTOR_SHIFT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*,struct blk_integrity*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_integrity_profile ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_integrity*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct dm_target *ti, struct dm_integrity_c *ic)
{
	struct gendisk *disk = FUNC2(FUNC3(ti->table));
	struct blk_integrity bi;

	FUNC4(&bi, 0, sizeof(bi));
	bi.profile = &dm_integrity_profile;
	bi.tuple_size = ic->tag_size;
	bi.tag_size = bi.tuple_size;
	bi.interval_exp = ic->sb->log2_sectors_per_block + SECTOR_SHIFT;

	FUNC0(disk, &bi);
	FUNC1(disk->queue, UINT_MAX);
}