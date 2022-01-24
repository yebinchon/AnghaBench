#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct request {int rq_flags; int /*<<< orphan*/  queuelist; } ;
struct ide_host {int host_flags; TYPE_2__* cur_port; } ;
typedef  scalar_t__ ide_startstop_t ;
struct TYPE_14__ {int /*<<< orphan*/  lock; struct request* rq; TYPE_3__* cur_dev; struct ide_host* host; TYPE_1__* tp_ops; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_15__ {int dev_flags; int /*<<< orphan*/  rq_list; int /*<<< orphan*/  sleep; TYPE_2__* hwif; } ;
typedef  TYPE_3__ ide_drive_t ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_17__ {int /*<<< orphan*/ * special; } ;
struct TYPE_16__ {int /*<<< orphan*/  resid_len; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* write_devctl ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int ATA_DEVCTL_OBS ; 
 int ATA_NIEN ; 
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int IDE_DFLAG_BLOCKED ; 
 int IDE_DFLAG_NIEN_QUIRK ; 
 int IDE_DFLAG_PARKED ; 
 int IDE_DFLAG_SLEEPING ; 
 int IDE_HFLAG_SERIALIZE ; 
 int RQF_DONTPREP ; 
 int RQF_PREEMPT ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct ide_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_9__* FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct request*) ; 
 scalar_t__ ide_stopped ; 
 int /*<<< orphan*/  FUNC8 (struct ide_host*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_6__* FUNC12 (struct request*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_3__*,struct request*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

blk_status_t FUNC18(ide_drive_t *drive, struct request *rq,
			  bool local_requeue)
{
	ide_hwif_t *hwif = drive->hwif;
	struct ide_host *host = hwif->host;
	ide_startstop_t	startstop;

	if (!FUNC3(rq) && !(rq->rq_flags & RQF_DONTPREP)) {
		rq->rq_flags |= RQF_DONTPREP;
		FUNC6(rq)->special = NULL;
	}

	/* HLD do_request() callback might sleep, make sure it's okay */
	FUNC11();

	if (FUNC4(host, hwif))
		return BLK_STS_DEV_RESOURCE;

	FUNC13(&hwif->lock);

	if (!FUNC5(hwif)) {
		ide_hwif_t *prev_port;

		FUNC0(hwif->rq);
repeat:
		prev_port = hwif->host->cur_port;
		if (drive->dev_flags & IDE_DFLAG_SLEEPING &&
		    FUNC17(drive->sleep, jiffies)) {
			FUNC9(hwif);
			goto plug_device;
		}

		if ((hwif->host->host_flags & IDE_HFLAG_SERIALIZE) &&
		    hwif != prev_port) {
			ide_drive_t *cur_dev =
				prev_port ? prev_port->cur_dev : NULL;

			/*
			 * set nIEN for previous port, drives in the
			 * quirk list may not like intr setups/cleanups
			 */
			if (cur_dev &&
			    (cur_dev->dev_flags & IDE_DFLAG_NIEN_QUIRK) == 0)
				prev_port->tp_ops->write_devctl(prev_port,
								ATA_NIEN |
								ATA_DEVCTL_OBS);

			hwif->host->cur_port = hwif;
		}
		hwif->cur_dev = drive;
		drive->dev_flags &= ~(IDE_DFLAG_SLEEPING | IDE_DFLAG_PARKED);

		/*
		 * Sanity: don't accept a request that isn't a PM request
		 * if we are currently power managed. This is very important as
		 * blk_stop_queue() doesn't prevent the blk_fetch_request()
		 * above to return us whatever is in the queue. Since we call
		 * ide_do_request() ourselves, we end up taking requests while
		 * the queue is blocked...
		 * 
		 * We let requests forced at head of queue with ide-preempt
		 * though. I hope that doesn't happen too much, hopefully not
		 * unless the subdriver triggers such a thing in its own PM
		 * state machine.
		 */
		if ((drive->dev_flags & IDE_DFLAG_BLOCKED) &&
		    FUNC1(rq) == 0 &&
		    (rq->rq_flags & RQF_PREEMPT) == 0) {
			/* there should be no pending command at this point */
			FUNC9(hwif);
			goto plug_device;
		}

		FUNC12(rq)->resid_len = FUNC2(rq);
		hwif->rq = rq;

		FUNC14(&hwif->lock);
		startstop = FUNC15(drive, rq);
		FUNC13(&hwif->lock);

		if (startstop == ide_stopped) {
			rq = hwif->rq;
			hwif->rq = NULL;
			if (rq)
				goto repeat;
			FUNC9(hwif);
			goto out;
		}
	} else {
plug_device:
		if (local_requeue)
			FUNC10(&rq->queuelist, &drive->rq_list);
		FUNC14(&hwif->lock);
		FUNC8(host);
		if (!local_requeue)
			FUNC7(drive, rq);
		return BLK_STS_OK;
	}

out:
	FUNC14(&hwif->lock);
	if (rq == NULL)
		FUNC8(host);
	return BLK_STS_OK;
}