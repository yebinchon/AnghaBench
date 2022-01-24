#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; TYPE_1__ id; } ;
struct cros_ec_device {int /*<<< orphan*/  event_notifier; } ;
struct TYPE_10__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_9__ {int base_present; TYPE_6__ notifier; TYPE_2__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_5__ cbas_ec ; 
 int /*<<< orphan*/  cbas_ec_notify ; 
 int FUNC1 (struct cros_ec_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 struct cros_ec_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 struct input_dev* FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct cros_ec_device *ec = FUNC4(pdev->dev.parent);
	struct input_dev *input;
	bool base_supported;
	int error;

	error = FUNC1(ec, false, &base_supported);
	if (error)
		return error;

	if (!base_supported)
		return -ENXIO;

	input = FUNC6(&pdev->dev);
	if (!input)
		return -ENOMEM;

	input->name = "Whiskers Tablet Mode Switch";
	input->id.bustype = BUS_HOST;

	FUNC9(input, EV_SW, SW_TABLET_MODE);

	error = FUNC7(input);
	if (error) {
		FUNC3(&pdev->dev, "cannot register input device: %d\n",
			error);
		return error;
	}

	/* Seed the state */
	error = FUNC1(ec, true, &cbas_ec.base_present);
	if (error) {
		FUNC3(&pdev->dev, "cannot query base state: %d\n", error);
		return error;
	}

	FUNC8(input, SW_TABLET_MODE, !cbas_ec.base_present);

	FUNC2(input);

	cbas_ec.dev = &pdev->dev;
	cbas_ec.notifier.notifier_call = cbas_ec_notify;
	error = FUNC0(&ec->event_notifier,
						 &cbas_ec.notifier);
	if (error) {
		FUNC3(&pdev->dev, "cannot register notifier: %d\n", error);
		FUNC2(NULL);
		return error;
	}

	FUNC5(&pdev->dev, true);
	return 0;
}