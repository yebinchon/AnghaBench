#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int host_flags; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_9__ {int dev_flags; int /*<<< orphan*/  id; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_DFLAG_NODMA ; 
 int IDE_HFLAG_TRUST_BIOS_FOR_DMA ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(ide_drive_t *drive)
{
	ide_hwif_t *hwif = drive->hwif;
	u8 speed;

	if (FUNC1(drive->id) == 0 ||
	    (drive->dev_flags & IDE_DFLAG_NODMA))
		return 0;

	/* consult the list of known "bad" drives */
	if (FUNC0(drive))
		return 0;

	if (hwif->host_flags & IDE_HFLAG_TRUST_BIOS_FOR_DMA)
		return FUNC2(drive);

	speed = FUNC3(drive);

	if (!speed)
		return 0;

	if (FUNC4(drive, speed))
		return 0;

	return 1;
}