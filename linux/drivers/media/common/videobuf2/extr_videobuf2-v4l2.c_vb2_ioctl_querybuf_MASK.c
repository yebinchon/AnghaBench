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
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct v4l2_buffer*) ; 
 struct video_device* FUNC1 (struct file*) ; 

int FUNC2(struct file *file, void *priv, struct v4l2_buffer *p)
{
	struct video_device *vdev = FUNC1(file);

	/* No need to call vb2_queue_is_busy(), anyone can query buffers. */
	return FUNC0(vdev->queue, p);
}