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
struct dm_clone_region_hydration {scalar_t__ status; int /*<<< orphan*/  h; int /*<<< orphan*/  region_nr; struct clone* clone; } ;
struct clone {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ CM_READ_ONLY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct hash_table_bucket*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct hash_table_bucket*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct clone*) ; 
 struct hash_table_bucket* FUNC4 (struct clone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct dm_clone_region_hydration *hd)
{
	int r = 0;
	unsigned long flags;
	struct hash_table_bucket *bucket;
	struct clone *clone = hd->clone;

	if (FUNC7(FUNC3(clone) >= CM_READ_ONLY))
		r = -EPERM;

	/* Update the metadata */
	if (FUNC6(!r) && hd->status == BLK_STS_OK)
		r = FUNC2(clone->cmd, hd->region_nr);

	bucket = FUNC4(clone, hd->region_nr);

	/* Remove hydration from hash table */
	FUNC0(bucket, flags);
	FUNC5(&hd->h);
	FUNC1(bucket, flags);

	return r;
}