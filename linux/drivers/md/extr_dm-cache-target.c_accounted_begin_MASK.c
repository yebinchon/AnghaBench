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
struct per_bio_data {int /*<<< orphan*/  len; } ;
struct cache {int /*<<< orphan*/  tracker; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 struct per_bio_data* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cache *cache, struct bio *bio)
{
	struct per_bio_data *pb;

	if (FUNC0(cache, bio)) {
		pb = FUNC2(bio);
		pb->len = FUNC1(bio);
		FUNC3(&cache->tracker, pb->len);
	}
}