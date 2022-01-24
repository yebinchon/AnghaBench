#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int version; scalar_t__ product; int /*<<< orphan*/  bustype; } ;
struct input_dev {char const* phys; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  evbit; int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct cros_ec_keyb {struct input_dev* idev; int /*<<< orphan*/  cols; int /*<<< orphan*/  row_shift; int /*<<< orphan*/  rows; int /*<<< orphan*/  ghost_filter; void* old_kb_state; void* valid_keys; struct device* dev; struct cros_ec_device* ec; } ;
struct cros_ec_device {int /*<<< orphan*/  phys_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_VIRTUAL ; 
 int /*<<< orphan*/  CROS_EC_DEV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cros_ec_keyb*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct input_dev* FUNC3 (struct device*) ; 
 char* FUNC4 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,struct cros_ec_keyb*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct input_dev*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(struct cros_ec_keyb *ckdev)
{
	struct cros_ec_device *ec_dev = ckdev->ec;
	struct device *dev = ckdev->dev;
	struct input_dev *idev;
	const char *phys;
	int err;

	err = FUNC11(dev, &ckdev->rows, &ckdev->cols);
	if (err)
		return err;

	ckdev->valid_keys = FUNC5(dev, ckdev->cols, GFP_KERNEL);
	if (!ckdev->valid_keys)
		return -ENOMEM;

	ckdev->old_kb_state = FUNC5(dev, ckdev->cols, GFP_KERNEL);
	if (!ckdev->old_kb_state)
		return -ENOMEM;

	/*
	 * We call the keyboard matrix 'input0'. Allocate phys before input
	 * dev, to ensure correct tear-down ordering.
	 */
	phys = FUNC4(dev, GFP_KERNEL, "%s/input0", ec_dev->phys_name);
	if (!phys)
		return -ENOMEM;

	idev = FUNC3(dev);
	if (!idev)
		return -ENOMEM;

	idev->name = CROS_EC_DEV_NAME;
	idev->phys = phys;
	FUNC0(EV_REP, idev->evbit);

	idev->id.bustype = BUS_VIRTUAL;
	idev->id.version = 1;
	idev->id.product = 0;
	idev->dev.parent = dev;

	ckdev->ghost_filter = FUNC12(dev->of_node,
					"google,needs-ghost-filter");

	err = FUNC10(NULL, NULL, ckdev->rows, ckdev->cols,
					 NULL, idev);
	if (err) {
		FUNC2(dev, "cannot build key matrix\n");
		return err;
	}

	ckdev->row_shift = FUNC6(ckdev->cols);

	FUNC8(idev, EV_MSC, MSC_SCAN);
	FUNC9(idev, ckdev);
	ckdev->idev = idev;
	FUNC1(ckdev);

	err = FUNC7(ckdev->idev);
	if (err) {
		FUNC2(dev, "cannot register input device\n");
		return err;
	}

	return 0;
}