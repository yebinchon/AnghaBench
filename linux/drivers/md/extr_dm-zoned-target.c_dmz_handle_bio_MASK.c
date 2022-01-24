#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dmz_target {TYPE_1__* dev; int /*<<< orphan*/  reclaim; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dmz_bioctx {struct dm_zone* zone; } ;
struct dm_zone {int dummy; } ;
struct dm_chunk_work {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int DMZ_BDEV_DYING ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct dm_zone*) ; 
 int FUNC1 (struct dm_zone*) ; 
#define  REQ_OP_DISCARD 131 
#define  REQ_OP_READ 130 
#define  REQ_OP_WRITE 129 
#define  REQ_OP_WRITE_ZEROES 128 
 int FUNC2 (struct bio*) ; 
 struct dmz_bioctx* FUNC3 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 struct dm_zone* FUNC8 (struct dmz_metadata*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct dmz_target*,struct dm_zone*,struct bio*) ; 
 int FUNC10 (struct dmz_target*,struct dm_zone*,struct bio*) ; 
 int FUNC11 (struct dmz_target*,struct dm_zone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC13 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct dmz_target *dmz, struct dm_chunk_work *cw,
			   struct bio *bio)
{
	struct dmz_bioctx *bioctx = FUNC3(bio, sizeof(struct dmz_bioctx));
	struct dmz_metadata *zmd = dmz->metadata;
	struct dm_zone *zone;
	int ret;

	/*
	 * Write may trigger a zone allocation. So make sure the
	 * allocation can succeed.
	 */
	if (FUNC2(bio) == REQ_OP_WRITE)
		FUNC14(dmz->reclaim);

	FUNC12(zmd);

	if (dmz->dev->flags & DMZ_BDEV_DYING) {
		ret = -EIO;
		goto out;
	}

	/*
	 * Get the data zone mapping the chunk. There may be no
	 * mapping for read and discard. If a mapping is obtained,
	 + the zone returned will be set to active state.
	 */
	zone = FUNC8(zmd, FUNC5(dmz->dev, bio),
				     FUNC2(bio));
	if (FUNC0(zone)) {
		ret = FUNC1(zone);
		goto out;
	}

	/* Process the BIO */
	if (zone) {
		FUNC4(zone);
		bioctx->zone = zone;
	}

	switch (FUNC2(bio)) {
	case REQ_OP_READ:
		ret = FUNC10(dmz, zone, bio);
		break;
	case REQ_OP_WRITE:
		ret = FUNC11(dmz, zone, bio);
		break;
	case REQ_OP_DISCARD:
	case REQ_OP_WRITE_ZEROES:
		ret = FUNC9(dmz, zone, bio);
		break;
	default:
		FUNC7(dmz->dev, "Unsupported BIO operation 0x%x",
			    FUNC2(bio));
		ret = -EIO;
	}

	/*
	 * Release the chunk mapping. This will check that the mapping
	 * is still valid, that is, that the zone used still has valid blocks.
	 */
	if (zone)
		FUNC13(zmd, zone);
out:
	FUNC6(bio, FUNC16(ret));

	FUNC15(zmd);
}