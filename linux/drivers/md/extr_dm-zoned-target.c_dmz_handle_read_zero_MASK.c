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
struct dmz_target {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 unsigned int DMZ_BLOCK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static void FUNC3(struct dmz_target *dmz, struct bio *bio,
				 sector_t chunk_block, unsigned int nr_blocks)
{
	unsigned int size = nr_blocks << DMZ_BLOCK_SHIFT;

	/* Clear nr_blocks */
	FUNC1(bio->bi_iter.bi_size, size);
	FUNC2(bio);
	FUNC1(bio->bi_iter.bi_size, size);

	FUNC0(bio, size);
}