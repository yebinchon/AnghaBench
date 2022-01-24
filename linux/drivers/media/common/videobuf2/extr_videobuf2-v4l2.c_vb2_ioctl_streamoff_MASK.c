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
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct video_device*,struct file*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct video_device* FUNC2 (struct file*) ; 

int FUNC3(struct file *file, void *priv, enum v4l2_buf_type i)
{
	struct video_device *vdev = FUNC2(file);

	if (FUNC0(vdev, file))
		return -EBUSY;
	return FUNC1(vdev->queue, i);
}