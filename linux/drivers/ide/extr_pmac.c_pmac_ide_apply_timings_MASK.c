#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * timings; } ;
typedef  TYPE_2__ pmac_ide_hwif_t ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {TYPE_1__ gendev; } ;
typedef  TYPE_3__ ide_hwif_t ;
struct TYPE_10__ {int dn; TYPE_3__* hwif; } ;
typedef  TYPE_4__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_TIMING_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ide_drive_t *drive)
{
	ide_hwif_t *hwif = drive->hwif;
	pmac_ide_hwif_t *pmif = FUNC1(hwif->gendev.parent);

	if (drive->dn & 1)
		FUNC3(pmif->timings[1], FUNC0(IDE_TIMING_CONFIG));
	else
		FUNC3(pmif->timings[0], FUNC0(IDE_TIMING_CONFIG));
	(void)FUNC2(FUNC0(IDE_TIMING_CONFIG));
}