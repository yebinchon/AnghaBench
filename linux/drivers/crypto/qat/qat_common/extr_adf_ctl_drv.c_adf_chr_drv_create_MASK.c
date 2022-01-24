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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {struct device* drv_class; int /*<<< orphan*/  drv_cdev; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int EFAULT ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_1__ adf_ctl_drv ; 
 int /*<<< orphan*/  adf_ctl_ops ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct device* FUNC9 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(void)
{
	dev_t dev_id;
	struct device *drv_device;

	if (FUNC3(&dev_id, 0, 1, DEVICE_NAME)) {
		FUNC10("QAT: unable to allocate chrdev region\n");
		return -EFAULT;
	}

	adf_ctl_drv.drv_class = FUNC7(THIS_MODULE, DEVICE_NAME);
	if (FUNC0(adf_ctl_drv.drv_class)) {
		FUNC10("QAT: class_create failed for adf_ctl\n");
		goto err_chrdev_unreg;
	}
	adf_ctl_drv.major = FUNC1(dev_id);
	FUNC6(&adf_ctl_drv.drv_cdev, &adf_ctl_ops);
	if (FUNC4(&adf_ctl_drv.drv_cdev, dev_id, 1)) {
		FUNC10("QAT: cdev add failed\n");
		goto err_class_destr;
	}

	drv_device = FUNC9(adf_ctl_drv.drv_class, NULL,
				   FUNC2(adf_ctl_drv.major, 0),
				   NULL, DEVICE_NAME);
	if (FUNC0(drv_device)) {
		FUNC10("QAT: failed to create device\n");
		goto err_cdev_del;
	}
	return 0;
err_cdev_del:
	FUNC5(&adf_ctl_drv.drv_cdev);
err_class_destr:
	FUNC8(adf_ctl_drv.drv_class);
err_chrdev_unreg:
	FUNC11(dev_id, 1);
	return -EFAULT;
}