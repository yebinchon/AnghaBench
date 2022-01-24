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
struct vb2_queue {int /*<<< orphan*/  done_wq; int /*<<< orphan*/  done_lock; int /*<<< orphan*/  owned_by_drv_count; int /*<<< orphan*/  done_list; } ;
struct TYPE_5__ {scalar_t__ req; } ;
struct vb2_buffer {scalar_t__ state; unsigned int num_planes; TYPE_2__ req_obj; int /*<<< orphan*/  done_entry; scalar_t__ synced; TYPE_1__* planes; int /*<<< orphan*/  index; int /*<<< orphan*/  cnt_buf_done; struct vb2_queue* vb2_queue; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_4__ {int /*<<< orphan*/  mem_priv; } ;

/* Variables and functions */
 scalar_t__ VB2_BUF_STATE_ACTIVE ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
#define  VB2_BUF_STATE_QUEUED 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct vb2_queue*,struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct vb2_buffer *vb, enum vb2_buffer_state state)
{
	struct vb2_queue *q = vb->vb2_queue;
	unsigned long flags;
	unsigned int plane;

	if (FUNC0(vb->state != VB2_BUF_STATE_ACTIVE))
		return;

	if (FUNC0(state != VB2_BUF_STATE_DONE &&
		    state != VB2_BUF_STATE_ERROR &&
		    state != VB2_BUF_STATE_QUEUED))
		state = VB2_BUF_STATE_ERROR;

#ifdef CONFIG_VIDEO_ADV_DEBUG
	/*
	 * Although this is not a callback, it still does have to balance
	 * with the buf_queue op. So update this counter manually.
	 */
	vb->cnt_buf_done++;
#endif
	FUNC3(4, "done processing on buffer %d, state: %d\n",
			vb->index, state);

	if (state != VB2_BUF_STATE_QUEUED) {
		/* sync buffers */
		for (plane = 0; plane < vb->num_planes; ++plane)
			FUNC2(vb, finish, vb->planes[plane].mem_priv);
		vb->synced = 0;
	}

	FUNC7(&q->done_lock, flags);
	if (state == VB2_BUF_STATE_QUEUED) {
		vb->state = VB2_BUF_STATE_QUEUED;
	} else {
		/* Add the buffer to the done buffers list */
		FUNC4(&vb->done_entry, &q->done_list);
		vb->state = state;
	}
	FUNC1(&q->owned_by_drv_count);

	if (state != VB2_BUF_STATE_QUEUED && vb->req_obj.req) {
		FUNC6(&vb->req_obj);
		FUNC5(&vb->req_obj);
	}

	FUNC8(&q->done_lock, flags);

	FUNC9(q, vb);

	switch (state) {
	case VB2_BUF_STATE_QUEUED:
		return;
	default:
		/* Inform any processes that may be waiting for buffers */
		FUNC10(&q->done_wq);
		break;
	}
}