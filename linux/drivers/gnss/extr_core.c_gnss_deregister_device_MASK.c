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
struct gnss_device {int disconnected; int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  rwsem; TYPE_1__* ops; int /*<<< orphan*/  read_queue; scalar_t__ count; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct gnss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct gnss_device *gdev)
{
	FUNC1(&gdev->rwsem);
	gdev->disconnected = true;
	if (gdev->count) {
		FUNC4(&gdev->read_queue);
		gdev->ops->close(gdev);
	}
	FUNC3(&gdev->rwsem);

	FUNC0(&gdev->cdev, &gdev->dev);
}