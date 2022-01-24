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
struct r10conf {int /*<<< orphan*/  mddev; TYPE_1__* mirrors; } ;
struct r10bio {int /*<<< orphan*/  remaining; int /*<<< orphan*/  state; int /*<<< orphan*/  sectors; TYPE_2__* mddev; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;
struct TYPE_6__ {int /*<<< orphan*/  corrected_errors; } ;
struct TYPE_5__ {struct r10conf* private; } ;
struct TYPE_4__ {TYPE_3__* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  R10BIO_IsRecover ; 
 int /*<<< orphan*/  R10BIO_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct r10bio *r10_bio, struct bio *bio, int d)
{
	struct r10conf *conf = r10_bio->mddev->private;

	if (!bio->bi_status)
		FUNC4(R10BIO_Uptodate, &r10_bio->state);
	else
		/* The write handler will notice the lack of
		 * R10BIO_Uptodate and record any errors etc
		 */
		FUNC0(r10_bio->sectors,
			   &conf->mirrors[d].rdev->corrected_errors);

	/* for reconstruct, we always reschedule after a read.
	 * for resync, only after all reads
	 */
	FUNC2(conf->mirrors[d].rdev, conf->mddev);
	if (FUNC5(R10BIO_IsRecover, &r10_bio->state) ||
	    FUNC1(&r10_bio->remaining)) {
		/* we have read all the blocks,
		 * do the comparison in process context in raid10d
		 */
		FUNC3(r10_bio);
	}
}