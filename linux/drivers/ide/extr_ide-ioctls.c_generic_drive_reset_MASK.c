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
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int cmd_len; int result; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PRIV_MISC ; 
 int /*<<< orphan*/  REQ_DRIVE_RESET ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 TYPE_3__* FUNC3 (struct request*) ; 
 TYPE_2__* FUNC4 (struct request*) ; 

__attribute__((used)) static int FUNC5(ide_drive_t *drive)
{
	struct request *rq;
	int ret = 0;

	rq = FUNC1(drive->queue, REQ_OP_DRV_IN, 0);
	FUNC3(rq)->type = ATA_PRIV_MISC;
	FUNC4(rq)->cmd_len = 1;
	FUNC4(rq)->cmd[0] = REQ_DRIVE_RESET;
	FUNC0(drive->queue, NULL, rq, 1);
	ret = FUNC4(rq)->result;
	FUNC2(rq);
	return ret;
}