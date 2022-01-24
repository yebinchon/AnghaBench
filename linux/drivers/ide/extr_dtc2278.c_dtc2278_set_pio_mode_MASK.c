#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_3__ {scalar_t__ pio_mode; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ XFER_PIO_3 ; 
 int /*<<< orphan*/  dtc2278_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(ide_hwif_t *hwif, ide_drive_t *drive)
{
	unsigned long flags;

	if (drive->pio_mode >= XFER_PIO_3) {
		FUNC0(&dtc2278_lock, flags);
		/*
		 * This enables PIO mode4 (3?) on the first interface
		 */
		FUNC2(1,0xc3);
		FUNC2(0,0xa0);
		FUNC1(&dtc2278_lock, flags);
	} else {
		/* we don't know how to set it back again.. */
		/* Actually we do - there is a data sheet available for the
		   Winbond but does anyone actually care */
	}
}