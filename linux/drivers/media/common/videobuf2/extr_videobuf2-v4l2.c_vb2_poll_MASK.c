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
struct video_device {int /*<<< orphan*/  flags; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_fh {int /*<<< orphan*/  wait; } ;
struct file {struct v4l2_fh* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLPRI ; 
 int /*<<< orphan*/  V4L2_FL_USES_V4L2_FH ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*,struct file*,int /*<<< orphan*/ *) ; 
 struct video_device* FUNC4 (struct file*) ; 

__poll_t FUNC5(struct vb2_queue *q, struct file *file, poll_table *wait)
{
	struct video_device *vfd = FUNC4(file);
	__poll_t res;

	res = FUNC3(q, file, wait);

	if (FUNC1(V4L2_FL_USES_V4L2_FH, &vfd->flags)) {
		struct v4l2_fh *fh = file->private_data;

		FUNC0(file, &fh->wait, wait);
		if (FUNC2(fh))
			res |= EPOLLPRI;
	}

	return res;
}