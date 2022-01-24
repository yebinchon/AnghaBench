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
struct dmz_bioctx {struct dm_zone* zone; int /*<<< orphan*/  ref; } ;
struct dm_zone {int /*<<< orphan*/  flags; } ;
struct bio {scalar_t__ bi_status; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ BLK_STS_OK ; 
 int /*<<< orphan*/  DMZ_SEQ_WRITE_ERR ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 struct dmz_bioctx* FUNC2 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_zone*) ; 
 scalar_t__ FUNC4 (struct dm_zone*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct bio *bio, blk_status_t status)
{
	struct dmz_bioctx *bioctx = FUNC2(bio, sizeof(struct dmz_bioctx));

	if (status != BLK_STS_OK && bio->bi_status == BLK_STS_OK)
		bio->bi_status = status;

	if (FUNC5(&bioctx->ref)) {
		struct dm_zone *zone = bioctx->zone;

		if (zone) {
			if (bio->bi_status != BLK_STS_OK &&
			    FUNC1(bio) == REQ_OP_WRITE &&
			    FUNC4(zone))
				FUNC6(DMZ_SEQ_WRITE_ERR, &zone->flags);
			FUNC3(zone);
		}
		FUNC0(bio);
	}
}