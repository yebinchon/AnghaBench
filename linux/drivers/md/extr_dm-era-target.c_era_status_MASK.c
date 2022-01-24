#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct metadata_stats {int /*<<< orphan*/  snap; int /*<<< orphan*/  era; scalar_t__ total; scalar_t__ used; } ;
struct era {int /*<<< orphan*/  sectors_per_block; TYPE_4__* origin_dev; TYPE_2__* metadata_dev; } ;
struct dm_target {struct era* private; } ;
typedef  int status_type_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_8__ {TYPE_3__* bdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_6__ {TYPE_1__* bdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DM_ERA_METADATA_BLOCK_SIZE ; 
 int SECTOR_SHIFT ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 
 int /*<<< orphan*/  SUPERBLOCK_LOCATION ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct era*,int /*<<< orphan*/ ,struct metadata_stats*) ; 
 int /*<<< orphan*/  metadata_get_stats ; 

__attribute__((used)) static void FUNC3(struct dm_target *ti, status_type_t type,
		       unsigned status_flags, char *result, unsigned maxlen)
{
	int r;
	struct era *era = ti->private;
	ssize_t sz = 0;
	struct metadata_stats stats;
	char buf[BDEVNAME_SIZE];

	switch (type) {
	case STATUSTYPE_INFO:
		r = FUNC2(era, metadata_get_stats, &stats);
		if (r)
			goto err;

		FUNC0("%u %llu/%llu %u",
		       (unsigned) (DM_ERA_METADATA_BLOCK_SIZE >> SECTOR_SHIFT),
		       (unsigned long long) stats.used,
		       (unsigned long long) stats.total,
		       (unsigned) stats.era);

		if (stats.snap != SUPERBLOCK_LOCATION)
			FUNC0(" %llu", stats.snap);
		else
			FUNC0(" -");
		break;

	case STATUSTYPE_TABLE:
		FUNC1(buf, era->metadata_dev->bdev->bd_dev);
		FUNC0("%s ", buf);
		FUNC1(buf, era->origin_dev->bdev->bd_dev);
		FUNC0("%s %u", buf, era->sectors_per_block);
		break;
	}

	return;

err:
	FUNC0("Error");
}