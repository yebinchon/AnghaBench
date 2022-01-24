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
struct vb2_queue {struct vb2_buffer** bufs; } ;
struct vb2_buffer {scalar_t__ state; scalar_t__ index; scalar_t__ prepared; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ VB2_BUF_STATE_DEQUEUED ; 
 int FUNC0 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_queue*,int /*<<< orphan*/ ,struct vb2_buffer*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  fill_user_buffer ; 

int FUNC3(struct vb2_queue *q, unsigned int index, void *pb)
{
	struct vb2_buffer *vb;
	int ret;

	vb = q->bufs[index];
	if (vb->state != VB2_BUF_STATE_DEQUEUED) {
		FUNC2(1, "invalid buffer state %d\n",
			vb->state);
		return -EINVAL;
	}
	if (vb->prepared) {
		FUNC2(1, "buffer already prepared\n");
		return -EINVAL;
	}

	ret = FUNC0(vb);
	if (ret)
		return ret;

	/* Fill buffer information for the userspace */
	FUNC1(q, fill_user_buffer, vb, pb);

	FUNC2(2, "prepare of buffer %d succeeded\n", vb->index);

	return 0;
}