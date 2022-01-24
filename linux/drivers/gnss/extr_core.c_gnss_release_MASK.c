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
struct inode {int dummy; } ;
struct gnss_device {scalar_t__ count; int /*<<< orphan*/  dev; int /*<<< orphan*/  rwsem; int /*<<< orphan*/  read_fifo; TYPE_1__* ops; scalar_t__ disconnected; } ;
struct file {struct gnss_device* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct gnss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct gnss_device *gdev = file->private_data;

	FUNC0(&gdev->rwsem);
	if (gdev->disconnected)
		goto unlock;

	if (--gdev->count == 0) {
		gdev->ops->close(gdev);
		FUNC1(&gdev->read_fifo);
	}
unlock:
	FUNC4(&gdev->rwsem);

	FUNC2(&gdev->dev);

	return 0;
}