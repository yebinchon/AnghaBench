#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct request {int rq_flags; int timeout; } ;
struct cdrom_info {int /*<<< orphan*/  disk; } ;
typedef  int req_flags_t ;
struct TYPE_6__ {int /*<<< orphan*/  queue; struct cdrom_info* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {unsigned int resid_len; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense; scalar_t__ result; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PRIV_PC ; 
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  IDE_DBG_PC ; 
 scalar_t__ NOT_READY ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 int /*<<< orphan*/  REQ_OP_DRV_OUT ; 
 int RQF_FAILED ; 
 scalar_t__ UNIT_ATTENTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct request*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned char const,int,int,int) ; 
 TYPE_3__* FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 TYPE_2__* FUNC9 (struct request*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(ide_drive_t *drive, const unsigned char *cmd,
		    int write, void *buffer, unsigned *bufflen,
		    struct scsi_sense_hdr *sshdr, int timeout,
		    req_flags_t rq_flags)
{
	struct cdrom_info *info = drive->driver_data;
	struct scsi_sense_hdr local_sshdr;
	int retries = 10;
	bool failed;

	FUNC5(IDE_DBG_PC, "cmd[0]: 0x%x, write: 0x%x, timeout: %d, "
				  "rq_flags: 0x%x",
				  cmd[0], write, timeout, rq_flags);

	if (!sshdr)
		sshdr = &local_sshdr;

	/* start of retry loop */
	do {
		struct request *rq;
		int error;
		bool delay = false;

		rq = FUNC1(drive->queue,
			write ? REQ_OP_DRV_OUT : REQ_OP_DRV_IN, 0);
		FUNC7(FUNC9(rq)->cmd, cmd, BLK_MAX_CDB);
		FUNC6(rq)->type = ATA_PRIV_PC;
		rq->rq_flags |= rq_flags;
		rq->timeout = timeout;
		if (buffer) {
			error = FUNC3(drive->queue, rq, buffer,
						*bufflen, GFP_NOIO);
			if (error) {
				FUNC2(rq);
				return error;
			}
		}

		FUNC0(drive->queue, info->disk, rq, 0);
		error = FUNC9(rq)->result ? -EIO : 0;

		if (buffer)
			*bufflen = FUNC9(rq)->resid_len;
		FUNC8(FUNC9(rq)->sense,
				     FUNC9(rq)->sense_len, sshdr);

		/*
		 * FIXME: we should probably abort/retry or something in case of
		 * failure.
		 */
		failed = (rq->rq_flags & RQF_FAILED) != 0;
		if (failed) {
			/*
			 * The request failed.  Retry if it was due to a unit
			 * attention status (usually means media was changed).
			 */
			if (sshdr->sense_key == UNIT_ATTENTION)
				FUNC4(drive);
			else if (sshdr->sense_key == NOT_READY &&
				 sshdr->asc == 4 && sshdr->ascq != 4) {
				/*
				 * The drive is in the process of loading
				 * a disk.  Retry, but wait a little to give
				 * the drive time to complete the load.
				 */
				delay = true;
			} else {
				/* otherwise, don't retry */
				retries = 0;
			}
			--retries;
		}
		FUNC2(rq);
		if (delay)
			FUNC10(2);
	} while (failed && retries >= 0);

	/* return an error if the command failed */
	return failed ? -EIO : 0;
}