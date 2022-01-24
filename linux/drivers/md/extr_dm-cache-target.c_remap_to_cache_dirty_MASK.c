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
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cache *cache, struct bio *bio,
				 dm_oblock_t oblock, dm_cblock_t cblock)
{
	FUNC1(cache, bio);
	FUNC4(cache, bio, cblock);
	if (FUNC0(bio) == WRITE) {
		FUNC5(cache, cblock);
		FUNC2(cache, FUNC3(cache, oblock));
	}
}