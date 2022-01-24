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
struct vb2_queue {int dummy; } ;
struct v4l2_buffer {int flags; int /*<<< orphan*/  index; } ;
struct media_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int V4L2_BUF_FLAG_REQUEST_FD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vb2_queue*,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 
 scalar_t__ FUNC2 (struct vb2_queue*) ; 
 int FUNC3 (struct vb2_queue*,struct media_device*,struct v4l2_buffer*,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct vb2_queue *q, struct media_device *mdev,
		    struct v4l2_buffer *b)
{
	int ret;

	if (FUNC2(q)) {
		FUNC0(1, "file io in progress\n");
		return -EBUSY;
	}

	if (b->flags & V4L2_BUF_FLAG_REQUEST_FD)
		return -EINVAL;

	ret = FUNC3(q, mdev, b, true, NULL);

	return ret ? ret : FUNC1(q, b->index, b);
}