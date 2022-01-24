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
struct dmz_metadata {int /*<<< orphan*/  dev; struct dmz_mblock** map_mblk; } ;
struct dmz_mblock {scalar_t__ data; } ;
struct dmz_map {int /*<<< orphan*/  dzone_id; } ;
struct dm_zone {unsigned int chunk; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_ALLOC_RND ; 
 unsigned int DMZ_MAP_ENTRIES_MASK ; 
 unsigned int DMZ_MAP_ENTRIES_SHIFT ; 
 unsigned int DMZ_MAP_UNMAPPED ; 
 int /*<<< orphan*/  DMZ_SEQ_WRITE_ERR ; 
 int /*<<< orphan*/  EIO ; 
 struct dm_zone* FUNC0 (int /*<<< orphan*/ ) ; 
 int REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_zone*) ; 
 struct dm_zone* FUNC3 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct dm_zone* FUNC5 (struct dmz_metadata*,unsigned int) ; 
 int FUNC6 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC7 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC10 (struct dmz_metadata*,struct dm_zone*,unsigned int) ; 
 scalar_t__ FUNC11 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC12 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC13 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC14 (struct dmz_metadata*,struct dm_zone*) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ) ; 

struct dm_zone *FUNC16(struct dmz_metadata *zmd, unsigned int chunk, int op)
{
	struct dmz_mblock *dmap_mblk = zmd->map_mblk[chunk >> DMZ_MAP_ENTRIES_SHIFT];
	struct dmz_map *dmap = (struct dmz_map *) dmap_mblk->data;
	int dmap_idx = chunk & DMZ_MAP_ENTRIES_MASK;
	unsigned int dzone_id;
	struct dm_zone *dzone = NULL;
	int ret = 0;

	FUNC8(zmd);
again:
	/* Get the chunk mapping */
	dzone_id = FUNC15(dmap[dmap_idx].dzone_id);
	if (dzone_id == DMZ_MAP_UNMAPPED) {
		/*
		 * Read or discard in unmapped chunks are fine. But for
		 * writes, we need a mapping, so get one.
		 */
		if (op != REQ_OP_WRITE)
			goto out;

		/* Allocate a random zone */
		dzone = FUNC3(zmd, DMZ_ALLOC_RND);
		if (!dzone) {
			if (FUNC4(zmd->dev)) {
				dzone = FUNC0(-EIO);
				goto out;
			}
			FUNC13(zmd);
			goto again;
		}

		FUNC10(zmd, dzone, chunk);

	} else {
		/* The chunk is already mapped: get the mapping zone */
		dzone = FUNC5(zmd, dzone_id);
		if (dzone->chunk != chunk) {
			dzone = FUNC0(-EIO);
			goto out;
		}

		/* Repair write pointer if the sequential dzone has error */
		if (FUNC11(dzone)) {
			ret = FUNC6(zmd, dzone);
			if (ret) {
				dzone = FUNC0(-EIO);
				goto out;
			}
			FUNC1(DMZ_SEQ_WRITE_ERR, &dzone->flags);
		}
	}

	/*
	 * If the zone is being reclaimed, the chunk mapping may change
	 * to a different zone. So wait for reclaim and retry. Otherwise,
	 * activate the zone (this will prevent reclaim from touching it).
	 */
	if (FUNC7(dzone)) {
		FUNC14(zmd, dzone);
		goto again;
	}
	FUNC2(dzone);
	FUNC9(zmd, dzone);
out:
	FUNC12(zmd);

	return dzone;
}