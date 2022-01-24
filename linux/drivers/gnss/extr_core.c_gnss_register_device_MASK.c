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
struct gnss_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/ * write_raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNSS_FLAG_HAS_WRITE_RAW ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC2(struct gnss_device *gdev)
{
	int ret;

	/* Set a flag which can be accessed without holding the rwsem. */
	if (gdev->ops->write_raw != NULL)
		gdev->flags |= GNSS_FLAG_HAS_WRITE_RAW;

	ret = FUNC0(&gdev->cdev, &gdev->dev);
	if (ret) {
		FUNC1(&gdev->dev, "failed to add device: %d\n", ret);
		return ret;
	}

	return 0;
}