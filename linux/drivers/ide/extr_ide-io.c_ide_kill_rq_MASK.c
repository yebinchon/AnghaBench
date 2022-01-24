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
typedef  scalar_t__ u8 ;
struct request {scalar_t__ rq_disk; } ;
struct TYPE_5__ {scalar_t__ media; int /*<<< orphan*/ * failed_pc; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_6__ {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  IDE_DRV_ERROR_GENERAL ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ide_floppy ; 
 scalar_t__ ide_tape ; 
 TYPE_2__* FUNC4 (struct request*) ; 

void FUNC5(ide_drive_t *drive, struct request *rq)
{
	u8 drv_req = FUNC0(rq) && rq->rq_disk;
	u8 media = drive->media;

	drive->failed_pc = NULL;

	if ((media == ide_floppy || media == ide_tape) && drv_req) {
		FUNC4(rq)->result = 0;
	} else {
		if (media == ide_tape)
			FUNC4(rq)->result = IDE_DRV_ERROR_GENERAL;
		else if (FUNC2(rq) && FUNC4(rq)->result == 0)
			FUNC4(rq)->result = -EIO;
	}

	FUNC3(drive, BLK_STS_IOERR, FUNC1(rq));
}