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
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/  major; int /*<<< orphan*/  sg_table; int /*<<< orphan*/  gendev_rel_comp; int /*<<< orphan*/  gendev; int /*<<< orphan*/ * portdev; int /*<<< orphan*/  irq; TYPE_1__* host; scalar_t__ present; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_8__ {int /*<<< orphan*/  get_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_DRIVES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PARTN_BITS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ide_cfg_mtx ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(ide_hwif_t *hwif)
{
	FUNC0(FUNC8());
	FUNC0(FUNC9());

	FUNC11(&ide_cfg_mtx);

	if (hwif->present) {
		FUNC2(hwif);
		hwif->present = 0;
	}

	FUNC6(hwif);

	if (!hwif->host->get_lock)
		FUNC5(hwif->irq, hwif);

	FUNC4(hwif->portdev);
	FUNC4(&hwif->gendev);
	FUNC14(&hwif->gendev_rel_comp);

	/*
	 * Remove us from the kernel's knowledge
	 */
	FUNC3(FUNC1(hwif->major, 0), MAX_DRIVES<<PARTN_BITS);
	FUNC10(hwif->sg_table);
	FUNC13(hwif->major, hwif->name);

	FUNC7(hwif);

	FUNC12(&ide_cfg_mtx);
}