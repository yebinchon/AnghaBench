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
struct video_device {TYPE_1__* queue; } ;
struct mutex {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct video_device* FUNC4 (struct file*) ; 

int FUNC5(struct file *file, struct mutex *lock)
{
	struct video_device *vdev = FUNC4(file);

	if (lock)
		FUNC0(lock);
	if (file->private_data == vdev->queue->owner) {
		FUNC3(vdev->queue);
		vdev->queue->owner = NULL;
	}
	if (lock)
		FUNC1(lock);
	return FUNC2(file);
}