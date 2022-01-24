#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_5__ {scalar_t__ dma_mode; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ const XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__ const) ; 

__attribute__((used)) static void FUNC2(ide_hwif_t *hwif, ide_drive_t *drive)
{
	const u8 speed = drive->dma_mode;

	if (speed >= XFER_UDMA_0)
		FUNC1(drive, speed);
	else
		FUNC0(drive, speed);
}