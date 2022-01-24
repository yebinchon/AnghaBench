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
struct dm_zone {unsigned int chunk; } ;
struct TYPE_2__ {int /*<<< orphan*/  zone_nr_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_ALLOC_RECLAIM ; 
 int ENOSPC ; 
 struct dm_zone* FUNC0 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dmz_metadata*,struct dm_zone*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmz_metadata*,struct dm_zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmz_metadata*,struct dm_zone*,unsigned int) ; 
 int FUNC9 (struct dmz_reclaim*,struct dm_zone*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC10 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC11 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC13 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_zone*) ; 

__attribute__((used)) static int FUNC15(struct dmz_reclaim *zrc, struct dm_zone *dzone)
{
	unsigned int chunk = dzone->chunk;
	struct dm_zone *szone = NULL;
	struct dmz_metadata *zmd = zrc->metadata;
	int ret;

	/* Get a free sequential zone */
	FUNC7(zmd);
	szone = FUNC0(zmd, DMZ_ALLOC_RECLAIM);
	FUNC11(zmd);
	if (!szone)
		return -ENOSPC;

	FUNC2(zrc->dev,
		      "Chunk %u, move rnd zone %u (weight %u) to seq zone %u",
		      chunk, FUNC4(zmd, dzone), FUNC14(dzone),
		      FUNC4(zmd, szone));

	/* Flush the random data zone into the sequential zone */
	ret = FUNC9(zrc, dzone, szone);

	FUNC6(zmd);

	if (ret == 0) {
		/* Validate copied blocks */
		ret = FUNC1(zmd, dzone, szone);
	}
	if (ret) {
		/* Free the sequential zone */
		FUNC7(zmd);
		FUNC3(zmd, szone);
		FUNC11(zmd);
	} else {
		/* Free the data zone and remap the chunk */
		FUNC5(zmd, dzone, 0, zrc->dev->zone_nr_blocks);
		FUNC7(zmd);
		FUNC13(zmd, dzone);
		FUNC12(dzone);
		FUNC3(zmd, dzone);
		FUNC8(zmd, szone, chunk);
		FUNC11(zmd);
	}

	FUNC10(zmd);

	return ret;
}