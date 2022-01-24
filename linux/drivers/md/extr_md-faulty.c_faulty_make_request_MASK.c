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
struct mddev {int /*<<< orphan*/  bio_set; struct faulty_conf* private; } ;
struct faulty_conf {TYPE_2__* rdev; int /*<<< orphan*/ * counters; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct bio* bi_private; TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  ReadFixable ; 
 int /*<<< orphan*/  ReadPersistent ; 
 int /*<<< orphan*/  ReadTransient ; 
 scalar_t__ WRITE ; 
 size_t WriteAll ; 
 int /*<<< orphan*/  WritePersistent ; 
 int /*<<< orphan*/  WriteTransient ; 
 int /*<<< orphan*/  FUNC0 (struct faulty_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC2 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct faulty_conf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct faulty_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  faulty_fail ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 

__attribute__((used)) static bool FUNC10(struct mddev *mddev, struct bio *bio)
{
	struct faulty_conf *conf = mddev->private;
	int failit = 0;

	if (FUNC3(bio) == WRITE) {
		/* write request */
		if (FUNC1(&conf->counters[WriteAll])) {
			/* special case - don't decrement, don't generic_make_request,
			 * just fail immediately
			 */
			FUNC5(bio);
			return true;
		}

		if (FUNC8(conf, bio->bi_iter.bi_sector,
				 FUNC4(bio), WRITE))
			failit = 1;
		if (FUNC7(conf, WritePersistent)) {
			FUNC0(conf, bio->bi_iter.bi_sector,
				   WritePersistent);
			failit = 1;
		}
		if (FUNC7(conf, WriteTransient))
			failit = 1;
	} else {
		/* read request */
		if (FUNC8(conf, bio->bi_iter.bi_sector,
				 FUNC4(bio), READ))
			failit = 1;
		if (FUNC7(conf, ReadTransient))
			failit = 1;
		if (FUNC7(conf, ReadPersistent)) {
			FUNC0(conf, bio->bi_iter.bi_sector,
				   ReadPersistent);
			failit = 1;
		}
		if (FUNC7(conf, ReadFixable)) {
			FUNC0(conf, bio->bi_iter.bi_sector,
				   ReadFixable);
			failit = 1;
		}
	}
	if (failit) {
		struct bio *b = FUNC2(bio, GFP_NOIO, &mddev->bio_set);

		FUNC6(b, conf->rdev->bdev);
		b->bi_private = bio;
		b->bi_end_io = faulty_fail;
		bio = b;
	} else
		FUNC6(bio, conf->rdev->bdev);

	FUNC9(bio);
	return true;
}