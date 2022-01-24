#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_device {struct vb2_queue* queue; struct mutex* lock; } ;
struct vb2_queue {int /*<<< orphan*/  owner; void* fileio; struct mutex* lock; } ;
struct mutex {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*,struct file*,int /*<<< orphan*/ *) ; 
 struct video_device* FUNC4 (struct file*) ; 

__poll_t FUNC5(struct file *file, poll_table *wait)
{
	struct video_device *vdev = FUNC4(file);
	struct vb2_queue *q = vdev->queue;
	struct mutex *lock = q->lock ? q->lock : vdev->lock;
	__poll_t res;
	void *fileio;

	/*
	 * If this helper doesn't know how to lock, then you shouldn't be using
	 * it but you should write your own.
	 */
	FUNC0(!lock);

	if (lock && FUNC1(lock))
		return EPOLLERR;

	fileio = q->fileio;

	res = FUNC3(vdev->queue, file, wait);

	/* If fileio was started, then we have a new queue owner. */
	if (!fileio && q->fileio)
		q->owner = file->private_data;
	if (lock)
		FUNC2(lock);
	return res;
}