#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct psp_device {TYPE_1__* sev_misc; int /*<<< orphan*/  sev_int_queue; struct device* dev; } ;
struct miscdevice {int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcount; struct miscdevice misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 TYPE_1__* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* misc_dev ; 
 int FUNC5 (struct miscdevice*) ; 
 int /*<<< orphan*/  sev_fops ; 

__attribute__((used)) static int FUNC6(struct psp_device *psp)
{
	struct device *dev = psp->dev;
	int ret;

	/*
	 * SEV feature support can be detected on multiple devices but the SEV
	 * FW commands must be issued on the master. During probe, we do not
	 * know the master hence we create /dev/sev on the first device probe.
	 * sev_do_cmd() finds the right master device to which to issue the
	 * command to the firmware.
	 */
	if (!misc_dev) {
		struct miscdevice *misc;

		misc_dev = FUNC1(dev, sizeof(*misc_dev), GFP_KERNEL);
		if (!misc_dev)
			return -ENOMEM;

		misc = &misc_dev->misc;
		misc->minor = MISC_DYNAMIC_MINOR;
		misc->name = DEVICE_NAME;
		misc->fops = &sev_fops;

		ret = FUNC5(misc);
		if (ret)
			return ret;

		FUNC4(&misc_dev->refcount);
	} else {
		FUNC3(&misc_dev->refcount);
	}

	FUNC2(&psp->sev_int_queue);
	psp->sev_misc = misc_dev;
	FUNC0(dev, "registered SEV device\n");

	return 0;
}