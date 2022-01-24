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
struct dm_table {int /*<<< orphan*/  md; } ;
typedef  enum blk_zoned_model { ____Placeholder_blk_zoned_model } blk_zoned_model ;

/* Variables and functions */
 int BLK_ZONED_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_table*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct dm_table *table,
					 enum blk_zoned_model zoned_model,
					 unsigned int zone_sectors)
{
	if (zoned_model == BLK_ZONED_NONE)
		return 0;

	if (!FUNC3(table, zoned_model)) {
		FUNC0("%s: zoned model is not consistent across all devices",
		      FUNC1(table->md));
		return -EINVAL;
	}

	/* Check zone size validity and compatibility */
	if (!zone_sectors || !FUNC4(zone_sectors))
		return -EINVAL;

	if (!FUNC2(table, zone_sectors)) {
		FUNC0("%s: zone sectors is not consistent across all devices",
		      FUNC1(table->md));
		return -EINVAL;
	}

	return 0;
}