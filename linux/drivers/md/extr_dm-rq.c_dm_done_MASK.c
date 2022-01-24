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
struct request {TYPE_3__* q; struct dm_rq_target_io* end_io_data; } ;
struct dm_rq_target_io {int /*<<< orphan*/  md; int /*<<< orphan*/  info; TYPE_4__* ti; } ;
typedef  int (* dm_request_endio_fn ) (TYPE_4__*,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_8__ {TYPE_1__* type; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_write_zeroes_sectors; int /*<<< orphan*/  max_write_same_sectors; int /*<<< orphan*/  max_discard_sectors; } ;
struct TYPE_7__ {TYPE_2__ limits; } ;
struct TYPE_5__ {int (* rq_end_io ) (TYPE_4__*,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_TARGET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  DM_ENDIO_DELAY_REQUEUE 131 
#define  DM_ENDIO_DONE 130 
#define  DM_ENDIO_INCOMPLETE 129 
#define  DM_ENDIO_REQUEUE 128 
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_WRITE_SAME ; 
 scalar_t__ REQ_OP_WRITE_ZEROES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_rq_target_io*,int) ; 
 scalar_t__ FUNC7 (struct request*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct request *clone, blk_status_t error, bool mapped)
{
	int r = DM_ENDIO_DONE;
	struct dm_rq_target_io *tio = clone->end_io_data;
	dm_request_endio_fn rq_end_io = NULL;

	if (tio->ti) {
		rq_end_io = tio->ti->type->rq_end_io;

		if (mapped && rq_end_io)
			r = rq_end_io(tio->ti, clone, error, &tio->info);
	}

	if (FUNC8(error == BLK_STS_TARGET)) {
		if (FUNC7(clone) == REQ_OP_DISCARD &&
		    !clone->q->limits.max_discard_sectors)
			FUNC2(tio->md);
		else if (FUNC7(clone) == REQ_OP_WRITE_SAME &&
			 !clone->q->limits.max_write_same_sectors)
			FUNC3(tio->md);
		else if (FUNC7(clone) == REQ_OP_WRITE_ZEROES &&
			 !clone->q->limits.max_write_zeroes_sectors)
			FUNC4(tio->md);
	}

	switch (r) {
	case DM_ENDIO_DONE:
		/* The target wants to complete the I/O */
		FUNC5(clone, error);
		break;
	case DM_ENDIO_INCOMPLETE:
		/* The target will handle the I/O */
		return;
	case DM_ENDIO_REQUEUE:
		/* The target wants to requeue the I/O */
		FUNC6(tio, false);
		break;
	case DM_ENDIO_DELAY_REQUEUE:
		/* The target wants to requeue the I/O after a delay */
		FUNC6(tio, true);
		break;
	default:
		FUNC1("unimplemented target endio return value: %d", r);
		FUNC0();
	}
}