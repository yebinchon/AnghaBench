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
struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,struct bio*) ; 

__attribute__((used)) static void FUNC5(struct cache *cache, struct bio *bio,
					    dm_oblock_t oblock, bool bio_has_pbd)
{
	if (bio_has_pbd)
		FUNC1(cache, bio);
	FUNC4(cache, bio);
	if (FUNC0(bio) == WRITE)
		FUNC2(cache, FUNC3(cache, oblock));
}