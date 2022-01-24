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
struct TYPE_6__ {scalar_t__ current_speed; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 unsigned long IDE_DRV_MASK ; 
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned long) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(ide_drive_t *drive)
{
	int ret = FUNC1(drive);
	unsigned long timings = (unsigned long)FUNC2(drive);

	if (drive->current_speed < XFER_UDMA_0 &&
	    (timings >> 8) != (timings & IDE_DRV_MASK))
		FUNC0(drive, timings & IDE_DRV_MASK);

	return ret;
}