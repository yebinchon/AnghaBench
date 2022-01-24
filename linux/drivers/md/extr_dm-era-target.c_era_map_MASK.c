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
struct era {int /*<<< orphan*/  md; } ;
struct dm_target {struct era* private; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int REQ_PREFLUSH ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct era*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct era*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct era*,struct bio*) ; 

__attribute__((used)) static int FUNC5(struct dm_target *ti, struct bio *bio)
{
	struct era *era = ti->private;
	dm_block_t block = FUNC2(era, bio);

	/*
	 * All bios get remapped to the origin device.  We do this now, but
	 * it may not get issued until later.  Depending on whether the
	 * block is marked in this era.
	 */
	FUNC4(era, bio);

	/*
	 * REQ_PREFLUSH bios carry no data, so we're not interested in them.
	 */
	if (!(bio->bi_opf & REQ_PREFLUSH) &&
	    (FUNC0(bio) == WRITE) &&
	    !FUNC3(era->md, block)) {
		FUNC1(era, bio);
		return DM_MAPIO_SUBMITTED;
	}

	return DM_MAPIO_REMAPPED;
}