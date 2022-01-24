#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct video_device {TYPE_1__* queue; } ;
struct v4l2_requestbuffers {int /*<<< orphan*/  count; int /*<<< orphan*/  memory; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  type; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct video_device*,struct file*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC4 (struct file*) ; 

int FUNC5(struct file *file, void *priv,
			  struct v4l2_requestbuffers *p)
{
	struct video_device *vdev = FUNC4(file);
	int res = FUNC3(vdev->queue, p->memory, p->type);

	FUNC0(vdev->queue, &p->capabilities);
	if (res)
		return res;
	if (FUNC2(vdev, file))
		return -EBUSY;
	res = FUNC1(vdev->queue, p->memory, &p->count);
	/* If count == 0, then the owner has released all buffers and he
	   is no longer owner of the queue. Otherwise we have a new owner. */
	if (res == 0)
		vdev->queue->owner = p->count ? file->private_data : NULL;
	return res;
}