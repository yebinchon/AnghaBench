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
struct dmz_metadata {int /*<<< orphan*/  map_rnd_list; int /*<<< orphan*/  dev; } ;
struct dm_zone {int /*<<< orphan*/  link; struct dm_zone* bzone; int /*<<< orphan*/  chunk; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_ALLOC_RND ; 
 int /*<<< orphan*/  DMZ_BUF ; 
 int /*<<< orphan*/  EIO ; 
 struct dm_zone* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dm_zone* FUNC1 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmz_metadata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct dm_zone *FUNC10(struct dmz_metadata *zmd,
				     struct dm_zone *dzone)
{
	struct dm_zone *bzone;

	FUNC4(zmd);
again:
	bzone = dzone->bzone;
	if (bzone)
		goto out;

	/* Allocate a random zone */
	bzone = FUNC1(zmd, DMZ_ALLOC_RND);
	if (!bzone) {
		if (FUNC2(zmd->dev)) {
			bzone = FUNC0(-EIO);
			goto out;
		}
		FUNC7(zmd);
		goto again;
	}

	/* Update the chunk mapping */
	FUNC5(zmd, dzone->chunk, FUNC3(zmd, dzone),
			      FUNC3(zmd, bzone));

	FUNC9(DMZ_BUF, &bzone->flags);
	bzone->chunk = dzone->chunk;
	bzone->bzone = dzone;
	dzone->bzone = bzone;
	FUNC8(&bzone->link, &zmd->map_rnd_list);
out:
	FUNC6(zmd);

	return bzone;
}