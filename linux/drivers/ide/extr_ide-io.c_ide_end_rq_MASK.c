#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct TYPE_4__ {int dev_flags; int retry_pio; int sense_rq_active; struct request* sense_rq; } ;
typedef  TYPE_1__ ide_drive_t ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int IDE_DFLAG_DMA_PIO_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(ide_drive_t *drive, struct request *rq, blk_status_t error,
	       unsigned int nr_bytes)
{
	/*
	 * decide whether to reenable DMA -- 3 is a random magic for now,
	 * if we DMA timeout more than 3 times, just stay in PIO
	 */
	if ((drive->dev_flags & IDE_DFLAG_DMA_PIO_RETRY) &&
	    drive->retry_pio <= 3) {
		drive->dev_flags &= ~IDE_DFLAG_DMA_PIO_RETRY;
		FUNC2(drive);
	}

	if (!FUNC1(rq, error, nr_bytes)) {
		if (rq == drive->sense_rq) {
			drive->sense_rq = NULL;
			drive->sense_rq_active = false;
		}

		FUNC0(rq, error);
		return 0;
	}

	return 1;
}