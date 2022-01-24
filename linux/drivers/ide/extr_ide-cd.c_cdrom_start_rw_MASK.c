#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  timeout; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/ * cmd; } ;
struct TYPE_5__ {int media_written; } ;
struct cdrom_info {TYPE_1__ devinfo; int /*<<< orphan*/  disk; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_6__ {int dma; int dev_flags; struct request_queue* queue; struct cdrom_info* driver_data; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATAPI_WAIT_PC ; 
 int /*<<< orphan*/  IDE_DBG_RQ ; 
 int IDE_DFLAG_USING_DMA ; 
 unsigned short SECTOR_SHIFT ; 
 scalar_t__ WRITE ; 
 unsigned short FUNC0 (struct request*) ; 
 unsigned short FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  ide_started ; 
 int /*<<< orphan*/  ide_stopped ; 
 unsigned short FUNC5 (struct request_queue*) ; 
 scalar_t__ FUNC6 (struct request*) ; 

__attribute__((used)) static ide_startstop_t FUNC7(ide_drive_t *drive, struct request *rq)
{
	struct cdrom_info *cd = drive->driver_data;
	struct request_queue *q = drive->queue;
	int write = FUNC6(rq) == WRITE;
	unsigned short sectors_per_frame =
		FUNC5(q) >> SECTOR_SHIFT;

	FUNC4(IDE_DBG_RQ, "rq->cmd[0]: 0x%x, rq->cmd_flags: 0x%x, "
				  "secs_per_frame: %u",
				  rq->cmd[0], rq->cmd_flags, sectors_per_frame);

	if (write) {
		/* disk has become write protected */
		if (FUNC2(cd->disk))
			return ide_stopped;
	} else {
		/*
		 * We may be retrying this request after an error.  Fix up any
		 * weirdness which might be present in the request packet.
		 */
		FUNC3(drive, rq);
	}

	/* fs requests *must* be hardware frame aligned */
	if ((FUNC1(rq) & (sectors_per_frame - 1)) ||
	    (FUNC0(rq) & (sectors_per_frame - 1)))
		return ide_stopped;

	/* use DMA, if possible */
	drive->dma = !!(drive->dev_flags & IDE_DFLAG_USING_DMA);

	if (write)
		cd->devinfo.media_written = 1;

	rq->timeout = ATAPI_WAIT_PC;

	return ide_started;
}