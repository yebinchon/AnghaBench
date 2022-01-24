#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int /*<<< orphan*/  queued_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  req; } ;
struct vb2_buffer {int state; unsigned int index; int /*<<< orphan*/ * request; TYPE_1__ req_obj; int /*<<< orphan*/  queued_entry; scalar_t__ prepared; } ;

/* Variables and functions */
 int EINVAL ; 
#define  VB2_BUF_STATE_DONE 129 
#define  VB2_BUF_STATE_ERROR 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_buffer*) ; 
 int FUNC2 (struct vb2_queue*,struct vb2_buffer**,void*,int) ; 
 int /*<<< orphan*/  buf_finish ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*,int /*<<< orphan*/ ,struct vb2_buffer*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ,struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  fill_user_buffer ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_queue*,struct vb2_buffer*) ; 

int FUNC11(struct vb2_queue *q, unsigned int *pindex, void *pb,
		   bool nonblocking)
{
	struct vb2_buffer *vb = NULL;
	int ret;

	ret = FUNC2(q, &vb, pb, nonblocking);
	if (ret < 0)
		return ret;

	switch (vb->state) {
	case VB2_BUF_STATE_DONE:
		FUNC5(3, "returning done buffer\n");
		break;
	case VB2_BUF_STATE_ERROR:
		FUNC5(3, "returning done buffer with errors\n");
		break;
	default:
		FUNC5(1, "invalid buffer state\n");
		return -EINVAL;
	}

	FUNC4(vb, buf_finish, vb);
	vb->prepared = 0;

	if (pindex)
		*pindex = vb->index;

	/* Fill buffer information for the userspace */
	if (pb)
		FUNC3(q, fill_user_buffer, vb, pb);

	/* Remove from videobuf queue */
	FUNC6(&vb->queued_entry);
	q->queued_count--;

	FUNC10(q, vb);

	/* go back to dequeued state */
	FUNC1(vb);

	if (FUNC0(vb->req_obj.req)) {
		FUNC8(&vb->req_obj);
		FUNC7(&vb->req_obj);
	}
	if (vb->request)
		FUNC9(vb->request);
	vb->request = NULL;

	FUNC5(2, "dqbuf of buffer %d, with state %d\n",
			vb->index, vb->state);

	return 0;

}