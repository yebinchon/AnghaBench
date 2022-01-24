#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct r10conf {TYPE_4__* mirrors; } ;
struct r10bio {TYPE_1__* devs; int /*<<< orphan*/  state; } ;
struct mddev {struct r10conf* private; } ;
struct bio {scalar_t__ bi_end_io; } ;
struct TYPE_8__ {TYPE_3__* replacement; TYPE_2__* rdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  nr_pending; } ;
struct TYPE_6__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  nr_pending; } ;
struct TYPE_5__ {int devnum; struct bio* repl_bio; struct bio* bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  R10BIO_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mddev *mddev, struct r10bio *r10_bio)
{
	struct r10conf *conf = mddev->private;
	int d;
	struct bio *wbio, *wbio2;

	if (!FUNC6(R10BIO_Uptodate, &r10_bio->state)) {
		FUNC3(r10_bio);
		FUNC2(r10_bio);
		return;
	}

	/*
	 * share the pages with the first bio
	 * and submit the write request
	 */
	d = r10_bio->devs[1].devnum;
	wbio = r10_bio->devs[1].bio;
	wbio2 = r10_bio->devs[1].repl_bio;
	/* Need to test wbio2->bi_end_io before we call
	 * generic_make_request as if the former is NULL,
	 * the latter is free to free wbio2.
	 */
	if (wbio2 && !wbio2->bi_end_io)
		wbio2 = NULL;
	if (wbio->bi_end_io) {
		FUNC0(&conf->mirrors[d].rdev->nr_pending);
		FUNC5(conf->mirrors[d].rdev->bdev, FUNC1(wbio));
		FUNC4(wbio);
	}
	if (wbio2) {
		FUNC0(&conf->mirrors[d].replacement->nr_pending);
		FUNC5(conf->mirrors[d].replacement->bdev,
			     FUNC1(wbio2));
		FUNC4(wbio2);
	}
}