#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct multipath_info {TYPE_2__* rdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  bi_sector; } ;
struct TYPE_11__ {struct multipath_bh* bi_private; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/  bi_opf; TYPE_1__ bi_iter; } ;
struct multipath_bh {scalar_t__ path; TYPE_3__ bio; struct mddev* mddev; struct bio* master_bio; } ;
struct mpconf {struct multipath_info* multipaths; int /*<<< orphan*/  pool; } ;
struct mddev {struct mpconf* private; } ;
struct bio {int bi_opf; } ;
struct TYPE_10__ {int /*<<< orphan*/  bdev; scalar_t__ data_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  REQ_FAILFAST_TRANSPORT ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*,TYPE_3__*) ; 
 struct multipath_bh* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct multipath_bh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  multipath_end_request ; 
 scalar_t__ FUNC10 (struct mpconf*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static bool FUNC12(struct mddev *mddev, struct bio * bio)
{
	struct mpconf *conf = mddev->private;
	struct multipath_bh * mp_bh;
	struct multipath_info *multipath;

	if (FUNC11(bio->bi_opf & REQ_PREFLUSH)) {
		FUNC5(mddev, bio);
		return true;
	}

	mp_bh = FUNC8(&conf->pool, GFP_NOIO);

	mp_bh->master_bio = bio;
	mp_bh->mddev = mddev;

	mp_bh->path = FUNC10(conf);
	if (mp_bh->path < 0) {
		FUNC2(bio);
		FUNC9(mp_bh, &conf->pool);
		return true;
	}
	multipath = conf->multipaths + mp_bh->path;

	FUNC1(&mp_bh->bio, NULL, 0);
	FUNC0(&mp_bh->bio, bio);

	mp_bh->bio.bi_iter.bi_sector += multipath->rdev->data_offset;
	FUNC3(&mp_bh->bio, multipath->rdev->bdev);
	mp_bh->bio.bi_opf |= REQ_FAILFAST_TRANSPORT;
	mp_bh->bio.bi_end_io = multipath_end_request;
	mp_bh->bio.bi_private = mp_bh;
	FUNC7(mddev, &mp_bh->bio);
	FUNC6(mddev, &mp_bh->bio);
	FUNC4(&mp_bh->bio);
	return true;
}