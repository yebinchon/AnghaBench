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
struct dmz_metadata {unsigned int nr_chunks; scalar_t__ nr_reserved_seq; int /*<<< orphan*/  unmap_nr_seq; int /*<<< orphan*/  unmap_seq_list; int /*<<< orphan*/  nr_seq; int /*<<< orphan*/  nr_reserved_seq_zones; int /*<<< orphan*/  reserved_seq_zones_list; int /*<<< orphan*/  unmap_nr_rnd; int /*<<< orphan*/  unmap_rnd_list; int /*<<< orphan*/  nr_rnd; int /*<<< orphan*/  map_rnd_list; int /*<<< orphan*/  map_seq_list; struct dmz_mblock** map_mblk; int /*<<< orphan*/  nr_map_blocks; struct dmz_dev* dev; } ;
struct dmz_mblock {scalar_t__ data; } ;
struct dmz_mblk {int dummy; } ;
struct dmz_map {int /*<<< orphan*/  bzone_id; int /*<<< orphan*/  dzone_id; } ;
struct dmz_dev {unsigned int nr_zones; } ;
struct dm_zone {unsigned int chunk; int /*<<< orphan*/  link; int /*<<< orphan*/  flags; struct dm_zone* bzone; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_BUF ; 
 int /*<<< orphan*/  DMZ_DATA ; 
 unsigned int DMZ_MAP_ENTRIES ; 
 unsigned int DMZ_MAP_UNMAPPED ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dmz_mblock*) ; 
 int FUNC1 (struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_dev*,char*,unsigned int,unsigned int) ; 
 struct dm_zone* FUNC5 (struct dmz_metadata*,unsigned int) ; 
 struct dmz_mblock* FUNC6 (struct dmz_metadata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC8 (struct dm_zone*) ; 
 scalar_t__ FUNC9 (struct dm_zone*) ; 
 scalar_t__ FUNC10 (struct dm_zone*) ; 
 struct dmz_mblock** FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dmz_metadata *zmd)
{
	struct dmz_dev *dev = zmd->dev;
	struct dm_zone *dzone, *bzone;
	struct dmz_mblock *dmap_mblk = NULL;
	struct dmz_map *dmap;
	unsigned int i = 0, e = 0, chunk = 0;
	unsigned int dzone_id;
	unsigned int bzone_id;

	/* Metadata block array for the chunk mapping table */
	zmd->map_mblk = FUNC11(zmd->nr_map_blocks,
				sizeof(struct dmz_mblk *), GFP_KERNEL);
	if (!zmd->map_mblk)
		return -ENOMEM;

	/* Get chunk mapping table blocks and initialize zone mapping */
	while (chunk < zmd->nr_chunks) {
		if (!dmap_mblk) {
			/* Get mapping block */
			dmap_mblk = FUNC6(zmd, i + 1);
			if (FUNC0(dmap_mblk))
				return FUNC1(dmap_mblk);
			zmd->map_mblk[i] = dmap_mblk;
			dmap = (struct dmz_map *) dmap_mblk->data;
			i++;
			e = 0;
		}

		/* Check data zone */
		dzone_id = FUNC12(dmap[e].dzone_id);
		if (dzone_id == DMZ_MAP_UNMAPPED)
			goto next;

		if (dzone_id >= dev->nr_zones) {
			FUNC4(dev, "Chunk %u mapping: invalid data zone ID %u",
				    chunk, dzone_id);
			return -EIO;
		}

		dzone = FUNC5(zmd, dzone_id);
		FUNC14(DMZ_DATA, &dzone->flags);
		dzone->chunk = chunk;
		FUNC7(zmd, dzone);

		if (FUNC10(dzone))
			FUNC13(&dzone->link, &zmd->map_rnd_list);
		else
			FUNC13(&dzone->link, &zmd->map_seq_list);

		/* Check buffer zone */
		bzone_id = FUNC12(dmap[e].bzone_id);
		if (bzone_id == DMZ_MAP_UNMAPPED)
			goto next;

		if (bzone_id >= dev->nr_zones) {
			FUNC4(dev, "Chunk %u mapping: invalid buffer zone ID %u",
				    chunk, bzone_id);
			return -EIO;
		}

		bzone = FUNC5(zmd, bzone_id);
		if (!FUNC10(bzone)) {
			FUNC4(dev, "Chunk %u mapping: invalid buffer zone %u",
				    chunk, bzone_id);
			return -EIO;
		}

		FUNC14(DMZ_DATA, &bzone->flags);
		FUNC14(DMZ_BUF, &bzone->flags);
		bzone->chunk = chunk;
		bzone->bzone = dzone;
		dzone->bzone = bzone;
		FUNC7(zmd, bzone);
		FUNC13(&bzone->link, &zmd->map_rnd_list);
next:
		chunk++;
		e++;
		if (e >= DMZ_MAP_ENTRIES)
			dmap_mblk = NULL;
	}

	/*
	 * At this point, only meta zones and mapped data zones were
	 * fully initialized. All remaining zones are unmapped data
	 * zones. Finish initializing those here.
	 */
	for (i = 0; i < dev->nr_zones; i++) {
		dzone = FUNC5(zmd, i);
		if (FUNC9(dzone))
			continue;

		if (FUNC10(dzone))
			zmd->nr_rnd++;
		else
			zmd->nr_seq++;

		if (FUNC8(dzone)) {
			/* Already initialized */
			continue;
		}

		/* Unmapped data zone */
		FUNC14(DMZ_DATA, &dzone->flags);
		dzone->chunk = DMZ_MAP_UNMAPPED;
		if (FUNC10(dzone)) {
			FUNC13(&dzone->link, &zmd->unmap_rnd_list);
			FUNC2(&zmd->unmap_nr_rnd);
		} else if (FUNC3(&zmd->nr_reserved_seq_zones) < zmd->nr_reserved_seq) {
			FUNC13(&dzone->link, &zmd->reserved_seq_zones_list);
			FUNC2(&zmd->nr_reserved_seq_zones);
			zmd->nr_seq--;
		} else {
			FUNC13(&dzone->link, &zmd->unmap_seq_list);
			FUNC2(&zmd->unmap_nr_seq);
		}
	}

	return 0;
}