#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtl2832_sdr_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vb_queue_lock; int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  vdev; int /*<<< orphan*/ * udev; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rtl2832_sdr_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct rtl2832_sdr_dev *dev = FUNC4(pdev);

	FUNC0(&pdev->dev, "\n");

	FUNC2(&dev->vb_queue_lock);
	FUNC2(&dev->v4l2_lock);
	/* No need to keep the urbs around after disconnection */
	dev->udev = NULL;
	FUNC5(&dev->v4l2_dev);
	FUNC7(&dev->vdev);
	FUNC3(&dev->v4l2_lock);
	FUNC3(&dev->vb_queue_lock);
	FUNC6(&dev->v4l2_dev);
	FUNC1(pdev->dev.parent->driver->owner);

	return 0;
}