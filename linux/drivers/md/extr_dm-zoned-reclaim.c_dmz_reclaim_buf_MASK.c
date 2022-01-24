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
struct dmz_reclaim {TYPE_1__* dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {int /*<<< orphan*/  chunk; int /*<<< orphan*/  wp_block; struct dm_zone* bzone; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  zone_nr_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dm_zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmz_metadata*) ; 
 int FUNC6 (struct dmz_metadata*,struct dm_zone*,struct dm_zone*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dmz_reclaim*,struct dm_zone*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC11 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_zone*) ; 

__attribute__((used)) static int FUNC13(struct dmz_reclaim *zrc, struct dm_zone *dzone)
{
	struct dm_zone *bzone = dzone->bzone;
	sector_t chunk_block = dzone->wp_block;
	struct dmz_metadata *zmd = zrc->metadata;
	int ret;

	FUNC0(zrc->dev,
		      "Chunk %u, move buf zone %u (weight %u) to data zone %u (weight %u)",
		      dzone->chunk, FUNC2(zmd, bzone), FUNC12(bzone),
		      FUNC2(zmd, dzone), FUNC12(dzone));

	/* Flush data zone into the buffer zone */
	ret = FUNC7(zrc, bzone, dzone);
	if (ret < 0)
		return ret;

	FUNC4(zmd);

	/* Validate copied blocks */
	ret = FUNC6(zmd, bzone, dzone, chunk_block);
	if (ret == 0) {
		/* Free the buffer zone */
		FUNC3(zmd, bzone, 0, zrc->dev->zone_nr_blocks);
		FUNC5(zmd);
		FUNC11(zmd, bzone);
		FUNC10(dzone);
		FUNC1(zmd, bzone);
		FUNC9(zmd);
	}

	FUNC8(zmd);

	return ret;
}