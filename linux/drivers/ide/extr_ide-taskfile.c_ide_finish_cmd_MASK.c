#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct request {int dummy; } ;
struct TYPE_12__ {scalar_t__ nsect; } ;
struct ide_cmd {int tf_flags; TYPE_2__ tf; } ;
struct TYPE_13__ {TYPE_1__* hwif; } ;
typedef  TYPE_3__ ide_drive_t ;
struct TYPE_14__ {scalar_t__ result; } ;
struct TYPE_11__ {struct request* rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int IDE_TFLAG_SET_XFER ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct ide_cmd*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__) ; 
 TYPE_4__* FUNC6 (struct request*) ; 

void FUNC7(ide_drive_t *drive, struct ide_cmd *cmd, u8 stat)
{
	struct request *rq = drive->hwif->rq;
	u8 err = FUNC4(drive), nsect = cmd->tf.nsect;
	u8 set_xfer = !!(cmd->tf_flags & IDE_TFLAG_SET_XFER);

	FUNC1(drive, cmd, stat, err);
	FUNC6(rq)->result = err;

	if (err == 0 && set_xfer) {
		FUNC5(drive, nsect);
		FUNC3(drive);
	}

	FUNC2(drive, err ? BLK_STS_IOERR : BLK_STS_OK, FUNC0(rq));
}