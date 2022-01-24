#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {unsigned int num_buffers; struct vb2_buffer** bufs; int /*<<< orphan*/  done_wq; int /*<<< orphan*/  owned_by_drv_count; int /*<<< orphan*/  done_list; int /*<<< orphan*/  queued_list; scalar_t__ uses_qbuf; scalar_t__ uses_requests; scalar_t__ error; scalar_t__ queued_count; scalar_t__ start_streaming_called; scalar_t__ streaming; } ;
struct TYPE_5__ {struct media_request* req; } ;
struct vb2_buffer {scalar_t__ state; unsigned int num_planes; scalar_t__ copied_timestamp; int /*<<< orphan*/ * request; TYPE_2__ req_obj; scalar_t__ prepared; scalar_t__ synced; TYPE_1__* planes; } ;
struct media_request {int state; int /*<<< orphan*/  lock; } ;
typedef  enum media_request_state { ____Placeholder_media_request_state } media_request_state ;
struct TYPE_4__ {int /*<<< orphan*/  mem_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MEDIA_REQUEST_STATE_QUEUED ; 
 scalar_t__ VB2_BUF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buf_finish ; 
 int /*<<< orphan*/  buf_request_complete ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_queue*,int /*<<< orphan*/ ,struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ,struct vb2_buffer*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  stop_streaming ; 
 int /*<<< orphan*/  FUNC14 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct vb2_queue *q)
{
	unsigned int i;

	/*
	 * Tell driver to stop all transactions and release all queued
	 * buffers.
	 */
	if (q->start_streaming_called)
		FUNC6(q, stop_streaming, q);

	/*
	 * If you see this warning, then the driver isn't cleaning up properly
	 * in stop_streaming(). See the stop_streaming() documentation in
	 * videobuf2-core.h for more information how buffers should be returned
	 * to vb2 in stop_streaming().
	 */
	if (FUNC1(FUNC3(&q->owned_by_drv_count))) {
		for (i = 0; i < q->num_buffers; ++i)
			if (q->bufs[i]->state == VB2_BUF_STATE_ACTIVE) {
				FUNC11("driver bug: stop_streaming operation is leaving buf %p in active state\n",
					q->bufs[i]);
				FUNC14(q->bufs[i], VB2_BUF_STATE_ERROR);
			}
		/* Must be zero now */
		FUNC1(FUNC3(&q->owned_by_drv_count));
	}

	q->streaming = 0;
	q->start_streaming_called = 0;
	q->queued_count = 0;
	q->error = 0;
	q->uses_requests = 0;
	q->uses_qbuf = 0;

	/*
	 * Remove all buffers from videobuf's list...
	 */
	FUNC0(&q->queued_list);
	/*
	 * ...and done list; userspace will not receive any buffers it
	 * has not already dequeued before initiating cancel.
	 */
	FUNC0(&q->done_list);
	FUNC4(&q->owned_by_drv_count, 0);
	FUNC15(&q->done_wq);

	/*
	 * Reinitialize all buffers for next use.
	 * Make sure to call buf_finish for any queued buffers. Normally
	 * that's done in dqbuf, but that's not going to happen when we
	 * cancel the whole queue. Note: this code belongs here, not in
	 * __vb2_dqbuf() since in vb2_core_dqbuf() there is a critical
	 * call to __fill_user_buffer() after buf_finish(). That order can't
	 * be changed, so we can't move the buf_finish() to __vb2_dqbuf().
	 */
	for (i = 0; i < q->num_buffers; ++i) {
		struct vb2_buffer *vb = q->bufs[i];
		struct media_request *req = vb->req_obj.req;

		/*
		 * If a request is associated with this buffer, then
		 * call buf_request_cancel() to give the driver to complete()
		 * related request objects. Otherwise those objects would
		 * never complete.
		 */
		if (req) {
			enum media_request_state state;
			unsigned long flags;

			FUNC12(&req->lock, flags);
			state = req->state;
			FUNC13(&req->lock, flags);

			if (state == MEDIA_REQUEST_STATE_QUEUED)
				FUNC7(vb, buf_request_complete, vb);
		}

		if (vb->synced) {
			unsigned int plane;

			for (plane = 0; plane < vb->num_planes; ++plane)
				FUNC5(vb, finish,
						vb->planes[plane].mem_priv);
			vb->synced = 0;
		}

		if (vb->prepared) {
			FUNC7(vb, buf_finish, vb);
			vb->prepared = 0;
		}
		FUNC2(vb);

		if (vb->req_obj.req) {
			FUNC9(&vb->req_obj);
			FUNC8(&vb->req_obj);
		}
		if (vb->request)
			FUNC10(vb->request);
		vb->request = NULL;
		vb->copied_timestamp = 0;
	}
}