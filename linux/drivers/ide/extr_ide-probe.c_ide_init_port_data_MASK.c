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
struct TYPE_4__ {unsigned int index; char* name; int /*<<< orphan*/ * tp_ops; int /*<<< orphan*/  gendev_rel_comp; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  major; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int /*<<< orphan*/  default_tp_ops ; 
 int /*<<< orphan*/ * ide_hwif_to_major ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ide_timer_expiry ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ide_hwif_t *hwif, unsigned int index)
{
	/* fill in any non-zero initial values */
	hwif->index	= index;
	hwif->major	= ide_hwif_to_major[index];

	hwif->name[0]	= 'i';
	hwif->name[1]	= 'd';
	hwif->name[2]	= 'e';
	hwif->name[3]	= '0' + index;

	FUNC2(&hwif->lock);

	FUNC3(&hwif->timer, ide_timer_expiry, 0);

	FUNC1(&hwif->gendev_rel_comp);

	hwif->tp_ops = &default_tp_ops;

	FUNC0(hwif);
}