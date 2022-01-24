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
struct request {int /*<<< orphan*/  q; } ;
struct mapped_device {int dummy; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_rq_target_io {int /*<<< orphan*/ * clone; int /*<<< orphan*/  info; struct dm_target* ti; struct request* orig; struct mapped_device* md; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int (* clone_and_map_rq ) (struct dm_target*,struct request*,int /*<<< orphan*/ *,struct request**) ;int /*<<< orphan*/  (* release_clone_rq ) (struct request*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  DM_MAPIO_DELAY_REQUEUE 132 
#define  DM_MAPIO_KILL 131 
#define  DM_MAPIO_REMAPPED 130 
#define  DM_MAPIO_REQUEUE 129 
#define  DM_MAPIO_SUBMITTED 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_rq_target_io*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct request*,struct request*,struct dm_rq_target_io*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dm_target*,struct request*,int /*<<< orphan*/ *,struct request**) ; 
 int /*<<< orphan*/  FUNC12 (struct request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct dm_rq_target_io *tio)
{
	int r;
	struct dm_target *ti = tio->ti;
	struct mapped_device *md = tio->md;
	struct request *rq = tio->orig;
	struct request *clone = NULL;
	blk_status_t ret;

	r = ti->type->clone_and_map_rq(ti, rq, &tio->info, &clone);
	switch (r) {
	case DM_MAPIO_SUBMITTED:
		/* The target has taken the I/O to submit by itself later */
		break;
	case DM_MAPIO_REMAPPED:
		if (FUNC10(clone, rq, tio, GFP_ATOMIC)) {
			/* -ENOMEM */
			ti->type->release_clone_rq(clone, &tio->info);
			return DM_MAPIO_REQUEUE;
		}

		/* The target has remapped the I/O so dispatch it */
		FUNC14(clone->q, clone, FUNC5(FUNC6(md)),
				     FUNC3(rq));
		ret = FUNC7(clone, rq);
		if (ret == BLK_STS_RESOURCE || ret == BLK_STS_DEV_RESOURCE) {
			FUNC4(clone);
			FUNC2(clone);
			tio->ti->type->release_clone_rq(clone, &tio->info);
			tio->clone = NULL;
			return DM_MAPIO_REQUEUE;
		}
		break;
	case DM_MAPIO_REQUEUE:
		/* The target wants to requeue the I/O */
		break;
	case DM_MAPIO_DELAY_REQUEUE:
		/* The target wants to requeue the I/O after a delay */
		FUNC9(tio, true);
		break;
	case DM_MAPIO_KILL:
		/* The target wants to complete the I/O */
		FUNC8(rq, BLK_STS_IOERR);
		break;
	default:
		FUNC1("unimplemented target map return value: %d", r);
		FUNC0();
	}

	return r;
}