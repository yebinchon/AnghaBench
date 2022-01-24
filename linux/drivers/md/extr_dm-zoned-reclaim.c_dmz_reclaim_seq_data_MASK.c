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
struct dm_zone {unsigned int chunk; struct dm_zone* bzone; } ;
struct TYPE_2__ {int /*<<< orphan*/  zone_nr_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dm_zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*,struct dm_zone*,unsigned int) ; 
 int FUNC7 (struct dmz_metadata*,struct dm_zone*,struct dm_zone*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dmz_reclaim*,struct dm_zone*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC10 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC12 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_zone*) ; 

__attribute__((used)) static int FUNC14(struct dmz_reclaim *zrc, struct dm_zone *dzone)
{
	unsigned int chunk = dzone->chunk;
	struct dm_zone *bzone = dzone->bzone;
	struct dmz_metadata *zmd = zrc->metadata;
	int ret = 0;

	FUNC0(zrc->dev,
		      "Chunk %u, move data zone %u (weight %u) to buf zone %u (weight %u)",
		      chunk, FUNC2(zmd, dzone), FUNC13(dzone),
		      FUNC2(zmd, bzone), FUNC13(bzone));

	/* Flush data zone into the buffer zone */
	ret = FUNC8(zrc, dzone, bzone);
	if (ret < 0)
		return ret;

	FUNC4(zmd);

	/* Validate copied blocks */
	ret = FUNC7(zmd, dzone, bzone, 0);
	if (ret == 0) {
		/*
		 * Free the data zone and remap the chunk to
		 * the buffer zone.
		 */
		FUNC3(zmd, dzone, 0, zrc->dev->zone_nr_blocks);
		FUNC5(zmd);
		FUNC12(zmd, bzone);
		FUNC12(zmd, dzone);
		FUNC11(dzone);
		FUNC1(zmd, dzone);
		FUNC6(zmd, bzone, chunk);
		FUNC10(zmd);
	}

	FUNC9(zmd);

	return ret;
}