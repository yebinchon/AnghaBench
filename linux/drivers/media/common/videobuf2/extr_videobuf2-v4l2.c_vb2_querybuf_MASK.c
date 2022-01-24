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
struct vb2_queue {scalar_t__ type; size_t num_buffers; struct vb2_buffer** bufs; } ;
struct vb2_buffer {int dummy; } ;
struct v4l2_buffer {scalar_t__ type; size_t index; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct vb2_buffer*,struct v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_queue*,size_t,struct v4l2_buffer*) ; 

int FUNC3(struct vb2_queue *q, struct v4l2_buffer *b)
{
	struct vb2_buffer *vb;
	int ret;

	if (b->type != q->type) {
		FUNC1(1, "wrong buffer type\n");
		return -EINVAL;
	}

	if (b->index >= q->num_buffers) {
		FUNC1(1, "buffer index out of range\n");
		return -EINVAL;
	}
	vb = q->bufs[b->index];
	ret = FUNC0(vb, b);
	if (!ret)
		FUNC2(q, b->index, b);
	return ret;
}