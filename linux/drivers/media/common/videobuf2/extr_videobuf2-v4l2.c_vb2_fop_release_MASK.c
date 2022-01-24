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
struct video_device {struct mutex* lock; TYPE_1__* queue; } ;
struct mutex {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mutex* lock; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct mutex*) ; 
 struct video_device* FUNC1 (struct file*) ; 

int FUNC2(struct file *file)
{
	struct video_device *vdev = FUNC1(file);
	struct mutex *lock = vdev->queue->lock ? vdev->queue->lock : vdev->lock;

	return FUNC0(file, lock);
}