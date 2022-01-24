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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct rtl2832_sdr_dev {int /*<<< orphan*/  udev; TYPE_1__ vdev; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtl2832_sdr_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
		struct v4l2_capability *cap)
{
	struct rtl2832_sdr_dev *dev = FUNC3(file);
	struct platform_device *pdev = dev->pdev;

	FUNC0(&pdev->dev, "\n");

	FUNC1(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
	FUNC1(cap->card, dev->vdev.name, sizeof(cap->card));
	FUNC2(dev->udev, cap->bus_info, sizeof(cap->bus_info));
	return 0;
}