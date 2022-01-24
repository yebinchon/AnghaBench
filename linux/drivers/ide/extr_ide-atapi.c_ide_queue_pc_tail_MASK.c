#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct ide_atapi_pc {int /*<<< orphan*/  c; } ;
struct gendisk {int dummy; } ;
struct TYPE_5__ {scalar_t__ media; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_7__ {struct ide_atapi_pc* special; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {scalar_t__ result; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PRIV_MISC ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  REQ_IDETAPE_PC1 ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gendisk*,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct request*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct request*) ; 
 scalar_t__ ide_tape ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (struct request*) ; 

int FUNC7(ide_drive_t *drive, struct gendisk *disk,
		      struct ide_atapi_pc *pc, void *buf, unsigned int bufflen)
{
	struct request *rq;
	int error;

	rq = FUNC1(drive->queue, REQ_OP_DRV_IN, 0);
	FUNC4(rq)->type = ATA_PRIV_MISC;
	FUNC4(rq)->special = pc;

	if (buf && bufflen) {
		error = FUNC3(drive->queue, rq, buf, bufflen,
					GFP_NOIO);
		if (error)
			goto put_req;
	}

	FUNC5(FUNC6(rq)->cmd, pc->c, 12);
	if (drive->media == ide_tape)
		FUNC6(rq)->cmd[13] = REQ_IDETAPE_PC1;
	FUNC0(drive->queue, disk, rq, 0);
	error = FUNC6(rq)->result ? -EIO : 0;
put_req:
	FUNC2(rq);
	return error;
}