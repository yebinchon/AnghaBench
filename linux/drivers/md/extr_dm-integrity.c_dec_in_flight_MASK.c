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
struct TYPE_2__ {int n_sectors; int logical_sector; } ;
struct dm_integrity_io {int write; int bi_status; int /*<<< orphan*/  work; TYPE_1__ range; struct dm_integrity_c* ic; int /*<<< orphan*/  in_flight; } ;
struct dm_integrity_c {int /*<<< orphan*/  wait_wq; } ;
struct bio {int bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int) ; 
 int FUNC3 (struct bio*) ; 
 struct bio* FUNC4 (struct dm_integrity_io*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_integrity_c*,struct dm_integrity_io*) ; 
 int /*<<< orphan*/  integrity_bio_wait ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_integrity_c*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_integrity_c*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct dm_integrity_io *dio)
{
	if (FUNC1(&dio->in_flight)) {
		struct dm_integrity_c *ic = dio->ic;
		struct bio *bio;

		FUNC8(ic, &dio->range);

		if (FUNC10(dio->write))
			FUNC9(ic);

		bio = FUNC4(dio, sizeof(struct dm_integrity_io));

		if (FUNC10(dio->bi_status) && !bio->bi_status)
			bio->bi_status = dio->bi_status;
		if (FUNC6(!bio->bi_status) && FUNC10(FUNC3(bio) != dio->range.n_sectors)) {
			dio->range.logical_sector += dio->range.n_sectors;
			FUNC2(bio, dio->range.n_sectors << SECTOR_SHIFT);
			FUNC0(&dio->work, integrity_bio_wait);
			FUNC7(ic->wait_wq, &dio->work);
			return;
		}
		FUNC5(ic, dio);
	}
}