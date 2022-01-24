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
struct hash_table_bucket {int dummy; } ;
struct dm_clone_region_hydration {int /*<<< orphan*/  deferred_bios; int /*<<< orphan*/  h; } ;
struct clone {int /*<<< orphan*/  cmd; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 struct dm_clone_region_hydration* FUNC0 (struct hash_table_bucket*,struct dm_clone_region_hydration*) ; 
 struct dm_clone_region_hydration* FUNC1 (struct hash_table_bucket*,unsigned long) ; 
 struct dm_clone_region_hydration* FUNC2 (struct clone*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bio*) ; 
 unsigned long FUNC5 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct hash_table_bucket*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct hash_table_bucket*,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_clone_region_hydration*) ; 
 scalar_t__ FUNC10 (struct clone*) ; 
 struct hash_table_bucket* FUNC11 (struct clone*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_clone_region_hydration*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_clone_region_hydration*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct dm_clone_region_hydration*,struct bio*) ; 
 scalar_t__ FUNC16 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC17 (struct clone*,struct bio*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(struct clone *clone, struct bio *bio)
{
	unsigned long flags;
	unsigned long region_nr;
	struct hash_table_bucket *bucket;
	struct dm_clone_region_hydration *hd, *hd2;

	region_nr = FUNC5(clone, bio);
	bucket = FUNC11(clone, region_nr);

	FUNC6(bucket, flags);

	hd = FUNC1(bucket, region_nr);
	if (hd) {
		/* Someone else is hydrating the region */
		FUNC4(&hd->deferred_bios, bio);
		FUNC7(bucket, flags);
		return;
	}

	if (FUNC8(clone->cmd, region_nr)) {
		/* The region has been hydrated */
		FUNC7(bucket, flags);
		FUNC17(clone, bio);
		return;
	}

	/*
	 * We must allocate a hydration descriptor and start the hydration of
	 * the corresponding region.
	 */
	FUNC7(bucket, flags);

	hd = FUNC2(clone);
	FUNC14(hd, region_nr);

	FUNC6(bucket, flags);

	/* Check if the region has been hydrated in the meantime. */
	if (FUNC8(clone->cmd, region_nr)) {
		FUNC7(bucket, flags);
		FUNC9(hd);
		FUNC17(clone, bio);
		return;
	}

	hd2 = FUNC0(bucket, hd);
	if (hd2 != hd) {
		/* Someone else started the region's hydration. */
		FUNC4(&hd2->deferred_bios, bio);
		FUNC7(bucket, flags);
		FUNC9(hd);
		return;
	}

	/*
	 * If the metadata mode is RO or FAIL then there is no point starting a
	 * hydration, since we will not be able to update the metadata when the
	 * hydration finishes.
	 */
	if (FUNC18(FUNC10(clone) >= CM_READ_ONLY)) {
		FUNC12(&hd->h);
		FUNC7(bucket, flags);
		FUNC9(hd);
		FUNC3(bio);
		return;
	}

	/*
	 * Start region hydration.
	 *
	 * If a bio overwrites a region, i.e., its size is equal to the
	 * region's size, then we don't need to copy the region from the source
	 * to the destination device.
	 */
	if (FUNC16(clone, bio)) {
		FUNC7(bucket, flags);
		FUNC15(hd, bio);
	} else {
		FUNC4(&hd->deferred_bios, bio);
		FUNC7(bucket, flags);
		FUNC13(hd, 1);
	}
}