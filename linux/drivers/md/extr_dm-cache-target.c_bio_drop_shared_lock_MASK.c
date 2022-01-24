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
struct per_bio_data {int /*<<< orphan*/ * cell; } ;
struct cache {int /*<<< orphan*/  prison; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,int /*<<< orphan*/ *) ; 
 struct per_bio_data* FUNC2 (struct bio*) ; 

__attribute__((used)) static void FUNC3(struct cache *cache, struct bio *bio)
{
	struct per_bio_data *pb = FUNC2(bio);

	if (pb->cell && FUNC0(cache->prison, pb->cell))
		FUNC1(cache, pb->cell);
	pb->cell = NULL;
}