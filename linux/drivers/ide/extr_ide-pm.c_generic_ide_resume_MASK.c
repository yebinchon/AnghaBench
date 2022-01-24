#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct ide_pm_state {int /*<<< orphan*/  pm_state; int /*<<< orphan*/  pm_step; } ;
struct ide_driver {int /*<<< orphan*/  (* resume ) (TYPE_1__*) ;} ;
struct device {scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  rqpm ;
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_8__ {int dn; int /*<<< orphan*/  queue; int /*<<< orphan*/ * hwif; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_9__ {struct ide_pm_state* special; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PRIV_PM_RESUME ; 
 int /*<<< orphan*/  BLK_MQ_REQ_PREEMPT ; 
 int /*<<< orphan*/  IDE_PM_START_RESUME ; 
 int /*<<< orphan*/  PM_EVENT_ON ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 struct request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct request*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct ide_pm_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (struct device*) ; 
 struct ide_driver* FUNC13 (scalar_t__) ; 

int FUNC14(struct device *dev)
{
	ide_drive_t *drive = FUNC12(dev);
	ide_drive_t *pair = FUNC6(drive);
	ide_hwif_t *hwif = drive->hwif;
	struct request *rq;
	struct ide_pm_state rqpm;
	int err;

	FUNC1(drive->queue, true);

	if (FUNC8(hwif)) {
		/* call ACPI _PS0 / _STM only once */
		if ((drive->dn & 1) == 0 || pair == NULL) {
			FUNC5(hwif, 1);
			FUNC4(hwif);
		}

		FUNC3(drive);
	}

	FUNC10(&rqpm, 0, sizeof(rqpm));
	rq = FUNC0(drive->queue, REQ_OP_DRV_IN, BLK_MQ_REQ_PREEMPT);
	FUNC9(rq)->type = ATA_PRIV_PM_RESUME;
	FUNC9(rq)->special = &rqpm;
	rqpm.pm_step = IDE_PM_START_RESUME;
	rqpm.pm_state = PM_EVENT_ON;

	err = FUNC7(rq);
	FUNC2(rq);

	if (err == 0 && dev->driver) {
		struct ide_driver *drv = FUNC13(dev->driver);

		if (drv->resume)
			drv->resume(drive);
	}

	return err;
}