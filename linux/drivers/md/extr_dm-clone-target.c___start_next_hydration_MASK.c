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
struct dm_clone_region_hydration {int dummy; } ;
struct clone {unsigned long nr_regions; int /*<<< orphan*/  cmd; } ;
struct batch_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batch_info*,struct dm_clone_region_hydration*) ; 
 int /*<<< orphan*/  FUNC1 (struct hash_table_bucket*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct hash_table_bucket*,struct dm_clone_region_hydration*) ; 
 struct dm_clone_region_hydration* FUNC3 (struct clone*) ; 
 int /*<<< orphan*/  FUNC4 (struct hash_table_bucket*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct hash_table_bucket*,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_clone_region_hydration*) ; 
 struct hash_table_bucket* FUNC9 (struct clone*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_clone_region_hydration*,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC11(struct clone *clone,
					    unsigned long offset,
					    struct batch_info *batch)
{
	unsigned long flags;
	struct hash_table_bucket *bucket;
	struct dm_clone_region_hydration *hd;
	unsigned long nr_regions = clone->nr_regions;

	hd = FUNC3(clone);

	/* Try to find a region to hydrate. */
	do {
		offset = FUNC6(clone->cmd, offset);
		if (offset == nr_regions)
			break;

		bucket = FUNC9(clone, offset);
		FUNC4(bucket, flags);

		if (!FUNC7(clone->cmd, offset) &&
		    !FUNC1(bucket, offset)) {
			FUNC10(hd, offset);
			FUNC2(bucket, hd);
			FUNC5(bucket, flags);

			/* Batch hydration */
			FUNC0(batch, hd);

			return (offset + 1);
		}

		FUNC5(bucket, flags);

	} while (++offset < nr_regions);

	if (hd)
		FUNC8(hd);

	return offset;
}