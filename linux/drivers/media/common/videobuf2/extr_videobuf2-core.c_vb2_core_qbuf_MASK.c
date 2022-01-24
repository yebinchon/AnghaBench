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
struct vb2_queue {int uses_qbuf; int uses_requests; scalar_t__ queued_count; int waiting_for_buffers; scalar_t__ min_buffers_needed; scalar_t__ start_streaming_called; scalar_t__ streaming; int /*<<< orphan*/  queued_list; scalar_t__ is_output; scalar_t__ requires_requests; struct vb2_buffer** bufs; scalar_t__ error; } ;
struct vb2_buffer {int state; int index; int /*<<< orphan*/  queued_entry; int /*<<< orphan*/  prepared; struct media_request* request; int /*<<< orphan*/  req_obj; } ;
struct media_request {int dummy; } ;

/* Variables and functions */
 int EBADR ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
#define  VB2_BUF_STATE_DEQUEUED 130 
#define  VB2_BUF_STATE_IN_REQUEST 129 
#define  VB2_BUF_STATE_PREPARING 128 
 int VB2_BUF_STATE_QUEUED ; 
 int FUNC0 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  buf_out_validate ; 
 int FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ,struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*,int /*<<< orphan*/ ,struct vb2_buffer*,void*) ; 
 int /*<<< orphan*/  copy_timestamp ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  fill_user_buffer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct media_request*) ; 
 int FUNC7 (struct media_request*) ; 
 int FUNC8 (struct media_request*,int /*<<< orphan*/ *,struct vb2_queue*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct media_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct vb2_queue*,struct vb2_buffer*) ; 
 int /*<<< orphan*/  vb2_core_req_ops ; 
 int FUNC12 (struct vb2_queue*) ; 

int FUNC13(struct vb2_queue *q, unsigned int index, void *pb,
		  struct media_request *req)
{
	struct vb2_buffer *vb;
	int ret;

	if (q->error) {
		FUNC4(1, "fatal error occurred on queue\n");
		return -EIO;
	}

	vb = q->bufs[index];

	if (!req && vb->state != VB2_BUF_STATE_IN_REQUEST &&
	    q->requires_requests) {
		FUNC4(1, "qbuf requires a request\n");
		return -EBADR;
	}

	if ((req && q->uses_qbuf) ||
	    (!req && vb->state != VB2_BUF_STATE_IN_REQUEST &&
	     q->uses_requests)) {
		FUNC4(1, "queue in wrong mode (qbuf vs requests)\n");
		return -EBUSY;
	}

	if (req) {
		int ret;

		q->uses_requests = 1;
		if (vb->state != VB2_BUF_STATE_DEQUEUED) {
			FUNC4(1, "buffer %d not in dequeued state\n",
				vb->index);
			return -EINVAL;
		}

		if (q->is_output && !vb->prepared) {
			ret = FUNC2(vb, buf_out_validate, vb);
			if (ret) {
				FUNC4(1, "buffer validation failed\n");
				return ret;
			}
		}

		FUNC9(&vb->req_obj);

		/* Make sure the request is in a safe state for updating. */
		ret = FUNC7(req);
		if (ret)
			return ret;
		ret = FUNC8(req, &vb2_core_req_ops,
						q, true, &vb->req_obj);
		FUNC10(req);
		if (ret)
			return ret;

		vb->state = VB2_BUF_STATE_IN_REQUEST;

		/*
		 * Increment the refcount and store the request.
		 * The request refcount is decremented again when the
		 * buffer is dequeued. This is to prevent vb2_buffer_done()
		 * from freeing the request from interrupt context, which can
		 * happen if the application closed the request fd after
		 * queueing the request.
		 */
		FUNC6(req);
		vb->request = req;

		/* Fill buffer information for the userspace */
		if (pb) {
			FUNC3(q, copy_timestamp, vb, pb);
			FUNC3(q, fill_user_buffer, vb, pb);
		}

		FUNC4(2, "qbuf of buffer %d succeeded\n", vb->index);
		return 0;
	}

	if (vb->state != VB2_BUF_STATE_IN_REQUEST)
		q->uses_qbuf = 1;

	switch (vb->state) {
	case VB2_BUF_STATE_DEQUEUED:
	case VB2_BUF_STATE_IN_REQUEST:
		if (!vb->prepared) {
			ret = FUNC0(vb);
			if (ret)
				return ret;
		}
		break;
	case VB2_BUF_STATE_PREPARING:
		FUNC4(1, "buffer still being prepared\n");
		return -EINVAL;
	default:
		FUNC4(1, "invalid buffer state %d\n", vb->state);
		return -EINVAL;
	}

	/*
	 * Add to the queued buffers list, a buffer will stay on it until
	 * dequeued in dqbuf.
	 */
	FUNC5(&vb->queued_entry, &q->queued_list);
	q->queued_count++;
	q->waiting_for_buffers = false;
	vb->state = VB2_BUF_STATE_QUEUED;

	if (pb)
		FUNC3(q, copy_timestamp, vb, pb);

	FUNC11(q, vb);

	/*
	 * If already streaming, give the buffer to driver for processing.
	 * If not, the buffer will be given to driver on next streamon.
	 */
	if (q->start_streaming_called)
		FUNC1(vb);

	/* Fill buffer information for the userspace */
	if (pb)
		FUNC3(q, fill_user_buffer, vb, pb);

	/*
	 * If streamon has been called, and we haven't yet called
	 * start_streaming() since not enough buffers were queued, and
	 * we now have reached the minimum number of queued buffers,
	 * then we can finally call start_streaming().
	 */
	if (q->streaming && !q->start_streaming_called &&
	    q->queued_count >= q->min_buffers_needed) {
		ret = FUNC12(q);
		if (ret)
			return ret;
	}

	FUNC4(2, "qbuf of buffer %d succeeded\n", vb->index);
	return 0;
}