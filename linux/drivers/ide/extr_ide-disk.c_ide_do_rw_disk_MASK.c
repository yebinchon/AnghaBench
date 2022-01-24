#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* rw_disk ) (TYPE_2__*,struct request*) ;} ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int dev_flags; int /*<<< orphan*/  name; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IDE_DFLAG_BLOCKED ; 
 scalar_t__ READ ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct request*,scalar_t__) ; 
 int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct request*) ; 

__attribute__((used)) static ide_startstop_t FUNC8(ide_drive_t *drive, struct request *rq,
				      sector_t block)
{
	ide_hwif_t *hwif = drive->hwif;

	FUNC0(drive->dev_flags & IDE_DFLAG_BLOCKED);
	FUNC0(FUNC2(rq));

	FUNC4(FUNC6(rq) == WRITE);

	FUNC5("%s: %sing: block=%llu, sectors=%u\n",
		 drive->name, FUNC6(rq) == READ ? "read" : "writ",
		 (unsigned long long)block, FUNC3(rq));

	if (hwif->rw_disk)
		hwif->rw_disk(drive, rq);

	return FUNC1(drive, rq, block);
}