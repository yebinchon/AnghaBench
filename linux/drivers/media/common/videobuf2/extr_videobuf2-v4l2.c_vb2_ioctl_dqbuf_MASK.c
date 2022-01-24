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
struct video_device {int /*<<< orphan*/  queue; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int O_NONBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct v4l2_buffer*,int) ; 
 scalar_t__ FUNC1 (struct video_device*,struct file*) ; 
 struct video_device* FUNC2 (struct file*) ; 

int FUNC3(struct file *file, void *priv, struct v4l2_buffer *p)
{
	struct video_device *vdev = FUNC2(file);

	if (FUNC1(vdev, file))
		return -EBUSY;
	return FUNC0(vdev->queue, p, file->f_flags & O_NONBLOCK);
}