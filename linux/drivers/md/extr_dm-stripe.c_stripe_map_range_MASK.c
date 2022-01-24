#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct stripe_c {TYPE_2__* stripe; } ;
struct TYPE_6__ {int /*<<< orphan*/  bi_size; scalar_t__ bi_sector; } ;
struct bio {TYPE_3__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_5__ {scalar_t__ physical_start; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe_c*,scalar_t__,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct stripe_c *sc, struct bio *bio,
			    uint32_t target_stripe)
{
	sector_t begin, end;

	FUNC3(sc, bio->bi_iter.bi_sector,
				target_stripe, &begin);
	FUNC3(sc, FUNC0(bio),
				target_stripe, &end);
	if (begin < end) {
		FUNC2(bio, sc->stripe[target_stripe].dev->bdev);
		bio->bi_iter.bi_sector = begin +
			sc->stripe[target_stripe].physical_start;
		bio->bi_iter.bi_size = FUNC4(end - begin);
		return DM_MAPIO_REMAPPED;
	} else {
		/* The range doesn't map to the target stripe */
		FUNC1(bio);
		return DM_MAPIO_SUBMITTED;
	}
}