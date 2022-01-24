#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {scalar_t__ val; } ;
struct TYPE_14__ {scalar_t__ smbus_alert; TYPE_2__ init; } ;
struct TYPE_13__ {scalar_t__ irq; } ;
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_12__ {TYPE_1__ dev; } ;

/* Variables and functions */
 TYPE_9__* adapter_parm ; 
 TYPE_6__ alert_data ; 
 scalar_t__ ara ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_6__*) ; 
 scalar_t__ irq ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__ parport_adapter ; 
 TYPE_2__ parport_ctrl_irq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 size_t type ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int err;

	/* Reset hardware to a sane state (SCL and SDA high) */
	FUNC7(NULL, 1);
	FUNC6(NULL, 1);
	/* Other init if needed (power on...) */
	if (adapter_parm[type].init.val) {
		FUNC4(1, &adapter_parm[type].init);
		/* Give powered devices some time to settle */
		FUNC5(100);
	}

	parport_adapter.dev.parent = &pdev->dev;
	err = FUNC2(&parport_adapter);
	if (err) {
		FUNC0(&pdev->dev, "Unable to register with I2C\n");
		return err;
	}

	/* Setup SMBus alert if supported */
	if (adapter_parm[type].smbus_alert && irq) {
		alert_data.irq = irq;
		ara = FUNC3(&parport_adapter, &alert_data);
		if (ara)
			FUNC4(1, &parport_ctrl_irq);
		else
			FUNC1(&pdev->dev, "Failed to register ARA client\n");
	}

	return 0;
}