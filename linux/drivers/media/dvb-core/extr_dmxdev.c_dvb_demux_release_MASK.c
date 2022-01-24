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
struct file {struct dmxdev_filter* private_data; } ;
struct dmxdev_filter {struct dmxdev* dev; } ;
struct dmxdev {int exit; int /*<<< orphan*/  mutex; TYPE_1__* dvbdev; } ;
struct TYPE_2__ {int users; int /*<<< orphan*/  wait_queue; } ;

/* Variables and functions */
 int FUNC0 (struct dmxdev*,struct dmxdev_filter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct dmxdev_filter *dmxdevfilter = file->private_data;
	struct dmxdev *dmxdev = dmxdevfilter->dev;
	int ret;

	ret = FUNC0(dmxdev, dmxdevfilter);

	FUNC1(&dmxdev->mutex);
	dmxdev->dvbdev->users--;
	if (dmxdev->dvbdev->users == 1 && dmxdev->exit == 1) {
		FUNC2(&dmxdev->mutex);
		FUNC3(&dmxdev->dvbdev->wait_queue);
	} else
		FUNC2(&dmxdev->mutex);

	return ret;
}