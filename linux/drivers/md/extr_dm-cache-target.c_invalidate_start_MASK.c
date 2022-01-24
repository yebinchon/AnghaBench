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
struct dm_cache_migration {int /*<<< orphan*/  invalidate_oblock; int /*<<< orphan*/  invalidate_cblock; struct bio* overwrite_bio; } ;
struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int EPERM ; 
 struct dm_cache_migration* FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int FUNC2 (struct dm_cache_migration*) ; 

__attribute__((used)) static int FUNC3(struct cache *cache, dm_cblock_t cblock,
			    dm_oblock_t oblock, struct bio *bio)
{
	struct dm_cache_migration *mg;

	if (!FUNC1(cache))
		return -EPERM;

	mg = FUNC0(cache);

	mg->overwrite_bio = bio;
	mg->invalidate_cblock = cblock;
	mg->invalidate_oblock = oblock;

	return FUNC2(mg);
}