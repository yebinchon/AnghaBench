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
struct vb2_queue {scalar_t__ type; int last_buffer_dequeued; int /*<<< orphan*/  is_output; } ;
struct v4l2_buffer {scalar_t__ type; int flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int V4L2_BUF_FLAG_DONE ; 
 int V4L2_BUF_FLAG_LAST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vb2_queue*,int /*<<< orphan*/ *,struct v4l2_buffer*,int) ; 
 scalar_t__ FUNC2 (struct vb2_queue*) ; 

int FUNC3(struct vb2_queue *q, struct v4l2_buffer *b, bool nonblocking)
{
	int ret;

	if (FUNC2(q)) {
		FUNC0(1, "file io in progress\n");
		return -EBUSY;
	}

	if (b->type != q->type) {
		FUNC0(1, "invalid buffer type\n");
		return -EINVAL;
	}

	ret = FUNC1(q, NULL, b, nonblocking);

	if (!q->is_output &&
	    b->flags & V4L2_BUF_FLAG_DONE &&
	    b->flags & V4L2_BUF_FLAG_LAST)
		q->last_buffer_dequeued = true;

	/*
	 *  After calling the VIDIOC_DQBUF V4L2_BUF_FLAG_DONE must be
	 *  cleared.
	 */
	b->flags &= ~V4L2_BUF_FLAG_DONE;

	return ret;
}