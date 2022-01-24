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
struct cache {scalar_t__ discard_block_size; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  dm_dblock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cache *cache, struct bio *bio,
				     dm_dblock_t *b, dm_dblock_t *e)
{
	sector_t sb = bio->bi_iter.bi_sector;
	sector_t se = FUNC0(bio);

	*b = FUNC3(FUNC2(sb, cache->discard_block_size));

	if (se - sb < cache->discard_block_size)
		*e = *b;
	else
		*e = FUNC3(FUNC1(se, cache->discard_block_size));
}