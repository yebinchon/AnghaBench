#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_8__ {int dev_flags; unsigned long sleep; struct request_queue* queue; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_10__ {unsigned long* special; void* type; } ;
struct TYPE_9__ {int cmd_len; int /*<<< orphan*/ * cmd; scalar_t__ result; } ;

/* Variables and functions */
 void* ATA_PRIV_MISC ; 
 int /*<<< orphan*/  BLK_MQ_REQ_NOWAIT ; 
 int EIO ; 
 int IDE_DFLAG_PARKED ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 int /*<<< orphan*/  REQ_PARK_HEADS ; 
 int /*<<< orphan*/  REQ_UNPARK_HEADS ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC2 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct request*) ; 
 int /*<<< orphan*/  ide_park_wq ; 
 TYPE_5__* FUNC7 (struct request*) ; 
 scalar_t__ jiffies ; 
 TYPE_3__* FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(ide_drive_t *drive, unsigned long timeout)
{
	ide_hwif_t *hwif = drive->hwif;
	struct request_queue *q = drive->queue;
	struct request *rq;
	int rc;

	timeout += jiffies;
	FUNC9(&hwif->lock);
	if (drive->dev_flags & IDE_DFLAG_PARKED) {
		int reset_timer = FUNC11(timeout, drive->sleep);
		int start_queue = 0;

		drive->sleep = timeout;
		FUNC12(&ide_park_wq);
		if (reset_timer && FUNC5(&hwif->timer))
			start_queue = 1;
		FUNC10(&hwif->lock);

		if (start_queue)
			FUNC3(q, true);
		return;
	}
	FUNC10(&hwif->lock);

	rq = FUNC2(q, REQ_OP_DRV_IN, 0);
	FUNC8(rq)->cmd[0] = REQ_PARK_HEADS;
	FUNC8(rq)->cmd_len = 1;
	FUNC7(rq)->type = ATA_PRIV_MISC;
	FUNC7(rq)->special = &timeout;
	FUNC1(q, NULL, rq, 1);
	rc = FUNC8(rq)->result ? -EIO : 0;
	FUNC4(rq);
	if (rc)
		goto out;

	/*
	 * Make sure that *some* command is sent to the drive after the
	 * timeout has expired, so power management will be reenabled.
	 */
	rq = FUNC2(q, REQ_OP_DRV_IN, BLK_MQ_REQ_NOWAIT);
	if (FUNC0(rq))
		goto out;

	FUNC8(rq)->cmd[0] = REQ_UNPARK_HEADS;
	FUNC8(rq)->cmd_len = 1;
	FUNC7(rq)->type = ATA_PRIV_MISC;
	FUNC9(&hwif->lock);
	FUNC6(drive, rq);
	FUNC10(&hwif->lock);

out:
	return;
}