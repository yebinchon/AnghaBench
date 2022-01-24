#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct cros_ec_keyb {struct device* dev; TYPE_1__ notifier; struct cros_ec_device* ec; } ;
struct cros_ec_device {int /*<<< orphan*/  event_notifier; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (struct cros_ec_keyb*) ; 
 int FUNC2 (struct cros_ec_keyb*) ; 
 int /*<<< orphan*/  cros_ec_keyb_work ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct cros_ec_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct cros_ec_keyb*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 struct cros_ec_keyb* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct cros_ec_device *ec = FUNC4(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct cros_ec_keyb *ckdev;
	int err;

	if (!dev->of_node)
		return -ENODEV;

	ckdev = FUNC7(dev, sizeof(*ckdev), GFP_KERNEL);
	if (!ckdev)
		return -ENOMEM;

	ckdev->ec = ec;
	ckdev->dev = dev;
	FUNC5(dev, ckdev);

	err = FUNC2(ckdev);
	if (err) {
		FUNC3(dev, "cannot register matrix inputs: %d\n", err);
		return err;
	}

	err = FUNC1(ckdev);
	if (err) {
		FUNC3(dev, "cannot register non-matrix inputs: %d\n", err);
		return err;
	}

	ckdev->notifier.notifier_call = cros_ec_keyb_work;
	err = FUNC0(&ckdev->ec->event_notifier,
					       &ckdev->notifier);
	if (err) {
		FUNC3(dev, "cannot register notifier: %d\n", err);
		return err;
	}

	FUNC6(ckdev->dev, true);
	return 0;
}