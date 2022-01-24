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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct ide_devset {int flags; int (* set ) (TYPE_1__*,int) ;} ;
struct TYPE_6__ {struct request_queue* queue; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_8__ {int (* special ) (TYPE_1__*,int) ;int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int cmd_len; int result; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PRIV_MISC ; 
 int DS_SYNC ; 
 int /*<<< orphan*/  REQ_DEVSET_EXEC ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 TYPE_4__* FUNC3 (struct request*) ; 
 TYPE_3__* FUNC4 (struct request*) ; 
 int FUNC5 (TYPE_1__*,int) ; 

int FUNC6(ide_drive_t *drive, const struct ide_devset *setting,
		       int arg)
{
	struct request_queue *q = drive->queue;
	struct request *rq;
	int ret = 0;

	if (!(setting->flags & DS_SYNC))
		return setting->set(drive, arg);

	rq = FUNC1(q, REQ_OP_DRV_IN, 0);
	FUNC3(rq)->type = ATA_PRIV_MISC;
	FUNC4(rq)->cmd_len = 5;
	FUNC4(rq)->cmd[0] = REQ_DEVSET_EXEC;
	*(int *)&FUNC4(rq)->cmd[1] = arg;
	FUNC3(rq)->special = setting->set;

	FUNC0(q, NULL, rq, 0);
	ret = FUNC4(rq)->result;
	FUNC2(rq);

	return ret;
}