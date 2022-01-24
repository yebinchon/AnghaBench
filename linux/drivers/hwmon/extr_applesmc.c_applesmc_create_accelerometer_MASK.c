#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/ * evbit; TYPE_2__ dev; TYPE_1__ id; } ;
struct TYPE_13__ {struct input_dev* input; int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  poll; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  has_accelerometer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  APPLESMC_INPUT_FLAT ; 
 int /*<<< orphan*/  APPLESMC_INPUT_FUZZ ; 
 int /*<<< orphan*/  APPLESMC_POLL_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  accelerometer_group ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* applesmc_idev ; 
 int /*<<< orphan*/  applesmc_idev_poll ; 
 TYPE_5__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* pdev ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 TYPE_3__ smcreg ; 

__attribute__((used)) static int FUNC9(void)
{
	struct input_dev *idev;
	int ret;

	if (!smcreg.has_accelerometer)
		return 0;

	ret = FUNC2(accelerometer_group, 1);
	if (ret)
		goto out;

	applesmc_idev = FUNC4();
	if (!applesmc_idev) {
		ret = -ENOMEM;
		goto out_sysfs;
	}

	applesmc_idev->poll = applesmc_idev_poll;
	applesmc_idev->poll_interval = APPLESMC_POLL_INTERVAL;

	/* initial calibrate for the input device */
	FUNC1();

	/* initialize the input device */
	idev = applesmc_idev->input;
	idev->name = "applesmc";
	idev->id.bustype = BUS_HOST;
	idev->dev.parent = &pdev->dev;
	idev->evbit[0] = FUNC0(EV_ABS);
	FUNC7(idev, ABS_X,
			-256, 256, APPLESMC_INPUT_FUZZ, APPLESMC_INPUT_FLAT);
	FUNC7(idev, ABS_Y,
			-256, 256, APPLESMC_INPUT_FUZZ, APPLESMC_INPUT_FLAT);

	ret = FUNC6(applesmc_idev);
	if (ret)
		goto out_idev;

	return 0;

out_idev:
	FUNC5(applesmc_idev);

out_sysfs:
	FUNC3(accelerometer_group);

out:
	FUNC8("driver init failed (ret=%d)!\n", ret);
	return ret;
}