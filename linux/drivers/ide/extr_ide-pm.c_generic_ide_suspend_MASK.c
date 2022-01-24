#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct ide_pm_state {scalar_t__ pm_state; int /*<<< orphan*/  pm_step; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  rqpm ;
struct TYPE_9__ {scalar_t__ event; } ;
typedef  TYPE_1__ pm_message_t ;
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_10__ {int dn; int /*<<< orphan*/  queue; int /*<<< orphan*/ * hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_12__ {struct ide_pm_state* special; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {scalar_t__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PRIV_PM_SUSPEND ; 
 int EIO ; 
 int /*<<< orphan*/  IDE_PM_START_SUSPEND ; 
 scalar_t__ PM_EVENT_FREEZE ; 
 scalar_t__ PM_EVENT_PRETHAW ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct ide_pm_state*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC9 (struct request*) ; 
 TYPE_2__* FUNC10 (struct device*) ; 

int FUNC11(struct device *dev, pm_message_t mesg)
{
	ide_drive_t *drive = FUNC10(dev);
	ide_drive_t *pair = FUNC5(drive);
	ide_hwif_t *hwif = drive->hwif;
	struct request *rq;
	struct ide_pm_state rqpm;
	int ret;

	if (FUNC6(hwif)) {
		/* call ACPI _GTM only once */
		if ((drive->dn & 1) == 0 || pair == NULL)
			FUNC3(hwif);
	}

	FUNC8(&rqpm, 0, sizeof(rqpm));
	rq = FUNC1(drive->queue, REQ_OP_DRV_IN, 0);
	FUNC7(rq)->type = ATA_PRIV_PM_SUSPEND;
	FUNC7(rq)->special = &rqpm;
	rqpm.pm_step = IDE_PM_START_SUSPEND;
	if (mesg.event == PM_EVENT_PRETHAW)
		mesg.event = PM_EVENT_FREEZE;
	rqpm.pm_state = mesg.event;

	FUNC0(drive->queue, NULL, rq, 0);
	ret = FUNC9(rq)->result ? -EIO : 0;
	FUNC2(rq);

	if (ret == 0 && FUNC6(hwif)) {
		/* call ACPI _PS3 only after both devices are suspended */
		if ((drive->dn & 1) || pair == NULL)
			FUNC4(hwif, 0);
	}

	return ret;
}