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
struct per_bio_data {int /*<<< orphan*/  req_nr; } ;
struct cache {int /*<<< orphan*/  committer; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct per_bio_data* FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,struct bio*) ; 

__attribute__((used)) static bool FUNC4(struct cache *cache, struct bio *bio)
{
	struct per_bio_data *pb = FUNC0(bio);

	if (!pb->req_nr)
		FUNC3(cache, bio);
	else
		FUNC2(cache, bio, 0);

	FUNC1(&cache->committer, bio);
	return true;
}