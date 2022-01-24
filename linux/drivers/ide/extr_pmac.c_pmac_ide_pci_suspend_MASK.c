#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int event; } ;
struct TYPE_5__ {TYPE_3__ power_state; } ;
struct TYPE_6__ {TYPE_1__ power; } ;
struct pci_dev {TYPE_2__ dev; } ;
typedef  int /*<<< orphan*/  pmac_ide_hwif_t ;
typedef  TYPE_3__ pm_message_t ;

/* Variables and functions */
 int PM_EVENT_SLEEP ; 
 int /*<<< orphan*/ * FUNC0 (struct pci_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct pci_dev *pdev, pm_message_t mesg)
{
	pmac_ide_hwif_t *pmif = FUNC0(pdev);
	int rc = 0;

	if (mesg.event != pdev->dev.power.power_state.event
			&& (mesg.event & PM_EVENT_SLEEP)) {
		rc = FUNC1(pmif);
		if (rc == 0)
			pdev->dev.power.power_state = mesg;
	}

	return rc;
}