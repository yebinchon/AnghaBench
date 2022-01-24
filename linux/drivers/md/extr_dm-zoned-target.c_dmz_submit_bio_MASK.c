#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dmz_target {int /*<<< orphan*/  metadata; TYPE_1__* dev; int /*<<< orphan*/  bio_set; } ;
struct dmz_bioctx {int /*<<< orphan*/  ref; } ;
struct dm_zone {unsigned int wp_block; } ;
struct TYPE_4__ {int bi_size; scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; struct dmz_bioctx* bi_private; int /*<<< orphan*/  bi_end_io; } ;
typedef  unsigned int sector_t ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ REQ_OP_WRITE ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int) ; 
 struct bio* FUNC1 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 struct dmz_bioctx* FUNC4 (struct bio*,int) ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  dmz_clone_endio ; 
 scalar_t__ FUNC6 (struct dm_zone*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dmz_target *dmz, struct dm_zone *zone,
			  struct bio *bio, sector_t chunk_block,
			  unsigned int nr_blocks)
{
	struct dmz_bioctx *bioctx = FUNC4(bio, sizeof(struct dmz_bioctx));
	struct bio *clone;

	clone = FUNC1(bio, GFP_NOIO, &dmz->bio_set);
	if (!clone)
		return -ENOMEM;

	FUNC3(clone, dmz->dev->bdev);
	clone->bi_iter.bi_sector =
		FUNC7(dmz->metadata, zone) + FUNC5(chunk_block);
	clone->bi_iter.bi_size = FUNC5(nr_blocks) << SECTOR_SHIFT;
	clone->bi_end_io = dmz_clone_endio;
	clone->bi_private = bioctx;

	FUNC0(bio, clone->bi_iter.bi_size);

	FUNC9(&bioctx->ref);
	FUNC8(clone);

	if (FUNC2(bio) == REQ_OP_WRITE && FUNC6(zone))
		zone->wp_block += nr_blocks;

	return 0;
}