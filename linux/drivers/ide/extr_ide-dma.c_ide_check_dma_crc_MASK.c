#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ current_speed; scalar_t__ crc_count; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ XFER_PIO_4 ; 
 scalar_t__ XFER_SW_DMA_0 ; 
 scalar_t__ XFER_UDMA_0 ; 
 scalar_t__ XFER_UDMA_7 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

void FUNC3(ide_drive_t *drive)
{
	u8 mode;

	FUNC0(drive);
	drive->crc_count = 0;
	mode = drive->current_speed;
	/*
	 * Don't try non Ultra-DMA modes without iCRC's.  Force the
	 * device to PIO and make the user enable SWDMA/MWDMA modes.
	 */
	if (mode > XFER_UDMA_0 && mode <= XFER_UDMA_7)
		mode--;
	else
		mode = XFER_PIO_4;
	FUNC2(drive, mode);
	if (drive->current_speed >= XFER_SW_DMA_0)
		FUNC1(drive);
}