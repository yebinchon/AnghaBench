#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  timeout; int /*<<< orphan*/ * cmd; } ;
struct ide_cmd {struct request* rq; int /*<<< orphan*/  tf_flags; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_10__ {int debug_mask; } ;
typedef  TYPE_1__ ide_drive_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATAPI_WAIT_PC ; 
#define  ATA_PRIV_MISC 134 
#define  ATA_PRIV_PC 133 
#define  ATA_PRIV_SENSE 132 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int IDE_DBG_RQ ; 
 int /*<<< orphan*/  IDE_TFLAG_WRITE ; 
#define  REQ_OP_DRV_IN 131 
#define  REQ_OP_DRV_OUT 130 
#define  REQ_OP_SCSI_IN 129 
#define  REQ_OP_SCSI_OUT 128 
 int /*<<< orphan*/  FUNC1 (struct request*,char*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 unsigned int FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (struct ide_cmd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct ide_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct ide_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct request*) ; 
 TYPE_2__* FUNC13 (struct request*) ; 
 int /*<<< orphan*/  ide_stopped ; 
 int /*<<< orphan*/  FUNC14 (struct ide_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct request*) ; 
 scalar_t__ FUNC16 (struct request*) ; 

__attribute__((used)) static ide_startstop_t FUNC17(ide_drive_t *drive, struct request *rq,
					sector_t block)
{
	struct ide_cmd cmd;
	int uptodate = 0;
	unsigned int nsectors;

	FUNC8(IDE_DBG_RQ, "cmd: 0x%x, block: %llu",
				  rq->cmd[0], (unsigned long long)block);

	if (drive->debug_mask & IDE_DBG_RQ)
		FUNC1(rq, "ide_cd_do_request");

	switch (FUNC15(rq)) {
	default:
		if (FUNC6(drive, rq) == ide_stopped)
			goto out_end;
		break;
	case REQ_OP_SCSI_IN:
	case REQ_OP_SCSI_OUT:
	handle_pc:
		if (!rq->timeout)
			rq->timeout = ATAPI_WAIT_PC;
		FUNC5(drive, rq);
		break;
	case REQ_OP_DRV_IN:
	case REQ_OP_DRV_OUT:
		switch (FUNC13(rq)->type) {
		case ATA_PRIV_MISC:
			/* right now this can only be a reset... */
			uptodate = 1;
			goto out_end;
		case ATA_PRIV_SENSE:
		case ATA_PRIV_PC:
			goto handle_pc;
		default:
			FUNC0();
		}
	}

	/* prepare sense request for this command */
	FUNC12(drive, rq);

	FUNC14(&cmd, 0, sizeof(cmd));

	if (FUNC16(rq))
		cmd.tf_flags |= IDE_TFLAG_WRITE;

	cmd.rq = rq;

	if (!FUNC3(rq) || FUNC2(rq)) {
		FUNC9(&cmd, FUNC2(rq));
		FUNC11(drive, &cmd);
	}

	return FUNC10(drive, &cmd);
out_end:
	nsectors = FUNC4(rq);

	if (nsectors == 0)
		nsectors = 1;

	FUNC7(drive, uptodate ? BLK_STS_OK : BLK_STS_IOERR, nsectors << 9);

	return ide_stopped;
}