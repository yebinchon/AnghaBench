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
struct dmz_reclaim {int /*<<< orphan*/  dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {scalar_t__ wp_block; struct dm_zone* bzone; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_zone*) ; 
 int FUNC1 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dmz_metadata*,struct dm_zone*,scalar_t__*) ; 
 int FUNC4 (struct dmz_metadata*) ; 
 struct dm_zone* FUNC5 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC7 (struct dm_zone*) ; 
 int FUNC8 (struct dmz_reclaim*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmz_reclaim*,struct dm_zone*) ; 
 int FUNC10 (struct dmz_reclaim*,struct dm_zone*) ; 
 int FUNC11 (struct dmz_reclaim*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_zone*) ; 
 unsigned long jiffies ; 
 int FUNC14 (unsigned long) ; 

__attribute__((used)) static int FUNC15(struct dmz_reclaim *zrc)
{
	struct dmz_metadata *zmd = zrc->metadata;
	struct dm_zone *dzone;
	struct dm_zone *rzone;
	unsigned long start;
	int ret;

	/* Get a data zone */
	dzone = FUNC5(zmd);
	if (FUNC0(dzone))
		return FUNC1(dzone);

	start = jiffies;

	if (FUNC7(dzone)) {
		if (!FUNC13(dzone)) {
			/* Empty zone */
			FUNC9(zrc, dzone);
			ret = 0;
		} else {
			/*
			 * Reclaim the random data zone by moving its
			 * valid data blocks to a free sequential zone.
			 */
			ret = FUNC10(zrc, dzone);
		}
		rzone = dzone;

	} else {
		struct dm_zone *bzone = dzone->bzone;
		sector_t chunk_block = 0;

		ret = FUNC3(zmd, bzone, &chunk_block);
		if (ret < 0)
			goto out;

		if (ret == 0 || chunk_block >= dzone->wp_block) {
			/*
			 * The buffer zone is empty or its valid blocks are
			 * after the data zone write pointer.
			 */
			ret = FUNC8(zrc, dzone);
			rzone = bzone;
		} else {
			/*
			 * Reclaim the data zone by merging it into the
			 * buffer zone so that the buffer zone itself can
			 * be later reclaimed.
			 */
			ret = FUNC11(zrc, dzone);
			rzone = dzone;
		}
	}
out:
	if (ret) {
		FUNC12(dzone);
		return ret;
	}

	ret = FUNC4(zrc->metadata);
	if (ret) {
		FUNC2(zrc->dev,
			      "Metadata flush for zone %u failed, err %d\n",
			      FUNC6(zmd, rzone), ret);
		return ret;
	}

	FUNC2(zrc->dev, "Reclaimed zone %u in %u ms",
		      FUNC6(zmd, rzone), FUNC14(jiffies - start));
	return 0;
}