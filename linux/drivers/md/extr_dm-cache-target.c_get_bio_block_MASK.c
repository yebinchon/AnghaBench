#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache {int sectors_per_block_shift; int /*<<< orphan*/  sectors_per_block; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static dm_oblock_t FUNC3(struct cache *cache, struct bio *bio)
{
	sector_t block_nr = bio->bi_iter.bi_sector;

	if (!FUNC0(cache))
		(void) FUNC1(block_nr, cache->sectors_per_block);
	else
		block_nr >>= cache->sectors_per_block_shift;

	return FUNC2(block_nr);
}