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
typedef  int u8 ;
struct request {int dummy; } ;
struct ide_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_12__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_14__ {struct ide_cmd* special; } ;
struct TYPE_13__ {int result; } ;
struct TYPE_11__ {struct request* rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct request*,int,int) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct ide_cmd*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,char const*,int) ; 
 TYPE_4__* FUNC9 (struct request*) ; 
 int /*<<< orphan*/  ide_stopped ; 
 TYPE_3__* FUNC10 (struct request*) ; 

ide_startstop_t FUNC11(ide_drive_t *drive, const char *msg, u8 stat)
{
	struct request *rq;
	u8 err;

	err = FUNC8(drive, msg, stat);

	rq = drive->hwif->rq;
	if (rq == NULL)
		return ide_stopped;

	/* retry only "normal" I/O: */
	if (FUNC4(rq)) {
		if (FUNC2(rq)) {
			struct ide_cmd *cmd = FUNC9(rq)->special;

			if (cmd)
				FUNC5(drive, cmd, stat, err);
		} else if (FUNC1(rq)) {
			FUNC10(rq)->result = 1;
			FUNC6(drive, rq);
			return ide_stopped;
		}
		FUNC10(rq)->result = err;
		FUNC7(drive, err ? BLK_STS_IOERR : BLK_STS_OK, FUNC3(rq));
		return ide_stopped;
	}

	return FUNC0(drive, rq, stat, err);
}