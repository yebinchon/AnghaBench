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
struct era {int sectors_per_block_shift; int /*<<< orphan*/  sectors_per_block; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int sector_t ;
typedef  int dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct era*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dm_block_t FUNC2(struct era *era, struct bio *bio)
{
	sector_t block_nr = bio->bi_iter.bi_sector;

	if (!FUNC0(era))
		(void) FUNC1(block_nr, era->sectors_per_block);
	else
		block_nr >>= era->sectors_per_block_shift;

	return block_nr;
}