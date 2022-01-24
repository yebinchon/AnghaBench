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
struct policy_work {int dummy; } ;
struct dm_cache_migration {struct bio* overwrite_bio; struct policy_work* op; } ;
struct cache {int /*<<< orphan*/  policy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 struct dm_cache_migration* FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 int FUNC3 (struct dm_cache_migration*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct policy_work*,int) ; 

__attribute__((used)) static int FUNC5(struct cache *cache, struct policy_work *op, struct bio *bio)
{
	struct dm_cache_migration *mg;

	if (!FUNC1(cache)) {
		FUNC4(cache->policy, op, false);
		return -EPERM;
	}

	mg = FUNC0(cache);

	mg->op = op;
	mg->overwrite_bio = bio;

	if (!bio)
		FUNC2(cache);

	return FUNC3(mg);
}