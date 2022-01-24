#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct request {int dummy; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_12__ {int host_flags; TYPE_1__* tp_ops; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_13__ {int dev_flags; int mult_count; int /*<<< orphan*/  special_flags; int /*<<< orphan*/  crc_count; TYPE_2__* hwif; } ;
typedef  TYPE_3__ ide_drive_t ;
struct TYPE_14__ {int result; } ;
struct TYPE_11__ {int (* read_status ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int ATA_ABORTED ; 
 int ATA_BBK ; 
 int ATA_BUSY ; 
 int ATA_CMD_INIT_DEV_PARAMS ; 
 int ATA_DF ; 
 int ATA_DRQ ; 
 int ATA_ERR ; 
 int ATA_TRK0NF ; 
 int ATA_UNC ; 
 int BAD_CRC ; 
 int ERROR_MAX ; 
 int ERROR_RECAL ; 
 int ERROR_RESET ; 
 int IDE_DFLAG_LBA ; 
 int IDE_DFLAG_NOWERR ; 
 int IDE_HFLAG_ERROR_STOPS_FIFO ; 
 int /*<<< orphan*/  IDE_SFLAG_RECALIBRATE ; 
 scalar_t__ READ ; 
 int SECTOR_SIZE ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  ide_stopped ; 
 scalar_t__ FUNC4 (struct request*) ; 
 TYPE_6__* FUNC5 (struct request*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static ide_startstop_t FUNC8(ide_drive_t *drive, struct request *rq,
				     u8 stat, u8 err)
{
	ide_hwif_t *hwif = drive->hwif;

	if ((stat & ATA_BUSY) ||
	    ((stat & ATA_DF) && (drive->dev_flags & IDE_DFLAG_NOWERR) == 0)) {
		/* other bits are useless when BUSY */
		FUNC5(rq)->result |= ERROR_RESET;
	} else if (stat & ATA_ERR) {
		/* err has different meaning on cdrom and tape */
		if (err == ATA_ABORTED) {
			if ((drive->dev_flags & IDE_DFLAG_LBA) &&
			    /* some newer drives don't support ATA_CMD_INIT_DEV_PARAMS */
			    hwif->tp_ops->read_status(hwif) == ATA_CMD_INIT_DEV_PARAMS)
				return ide_stopped;
		} else if ((err & BAD_CRC) == BAD_CRC) {
			/* UDMA crc error, just retry the operation */
			drive->crc_count++;
		} else if (err & (ATA_BBK | ATA_UNC)) {
			/* retries won't help these */
			FUNC5(rq)->result = ERROR_MAX;
		} else if (err & ATA_TRK0NF) {
			/* help it find track zero */
			FUNC5(rq)->result |= ERROR_RECAL;
		}
	}

	if ((stat & ATA_DRQ) && FUNC4(rq) == READ &&
	    (hwif->host_flags & IDE_HFLAG_ERROR_STOPS_FIFO) == 0) {
		int nsect = drive->mult_count ? drive->mult_count : 1;

		FUNC3(drive, READ, nsect * SECTOR_SIZE);
	}

	if (FUNC5(rq)->result >= ERROR_MAX || FUNC0(rq)) {
		FUNC2(drive, rq);
		return ide_stopped;
	}

	if (hwif->tp_ops->read_status(hwif) & (ATA_BUSY | ATA_DRQ))
		FUNC5(rq)->result |= ERROR_RESET;

	if ((FUNC5(rq)->result & ERROR_RESET) == ERROR_RESET) {
		++FUNC5(rq)->result;
		return FUNC1(drive);
	}

	if ((FUNC5(rq)->result & ERROR_RECAL) == ERROR_RECAL)
		drive->special_flags |= IDE_SFLAG_RECALIBRATE;

	++FUNC5(rq)->result;

	return ide_stopped;
}