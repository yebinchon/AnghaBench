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
struct mddev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 scalar_t__ READ ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct mddev *mddev, struct bio *bio)
{
	sector_t sectors;

	if (FUNC7(bio->bi_opf & REQ_PREFLUSH)) {
		FUNC3(mddev, bio);
		return true;
	}

	/*
	 * There is a limit to the maximum size, but
	 * the read/write handler might find a lower limit
	 * due to bad blocks.  To avoid multiple splits,
	 * we pass the maximum number of sectors down
	 * and let the lower level perform the split.
	 */
	sectors = FUNC0(
		bio->bi_iter.bi_sector, FUNC2(bio));

	if (FUNC1(bio) == READ)
		FUNC5(mddev, bio, sectors, NULL);
	else {
		if (!FUNC4(mddev,bio))
			return false;
		FUNC6(mddev, bio, sectors);
	}
	return true;
}