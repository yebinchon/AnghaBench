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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int timestamp_flags; int buf_struct_size; int copy_timestamp; int quirk_poll_must_check_waiting_for_buffers; int /*<<< orphan*/  type; int /*<<< orphan*/  is_output; int /*<<< orphan*/  is_multiplanar; int /*<<< orphan*/ * buf_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int V4L2_BUF_FLAG_TIMESTAMP_COPY ; 
 int V4L2_BUF_FLAG_TIMESTAMP_MASK ; 
 int V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 scalar_t__ V4L2_MEMORY_DMABUF ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 scalar_t__ V4L2_MEMORY_USERPTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VB2_MEMORY_DMABUF ; 
 int VB2_MEMORY_MMAP ; 
 int VB2_MEMORY_USERPTR ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  v4l2_buf_ops ; 
 int FUNC3 (struct vb2_queue*) ; 

int FUNC4(struct vb2_queue *q)
{
	/*
	 * Sanity check
	 */
	if (FUNC2(!q)			  ||
	    FUNC2(q->timestamp_flags &
		    ~(V4L2_BUF_FLAG_TIMESTAMP_MASK |
		      V4L2_BUF_FLAG_TSTAMP_SRC_MASK)))
		return -EINVAL;

	/* Warn that the driver should choose an appropriate timestamp type */
	FUNC2((q->timestamp_flags & V4L2_BUF_FLAG_TIMESTAMP_MASK) ==
		V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN);

	/* Warn that vb2_memory should match with v4l2_memory */
	if (FUNC2(VB2_MEMORY_MMAP != (int)V4L2_MEMORY_MMAP)
		|| FUNC2(VB2_MEMORY_USERPTR != (int)V4L2_MEMORY_USERPTR)
		|| FUNC2(VB2_MEMORY_DMABUF != (int)V4L2_MEMORY_DMABUF))
		return -EINVAL;

	if (q->buf_struct_size == 0)
		q->buf_struct_size = sizeof(struct vb2_v4l2_buffer);

	q->buf_ops = &v4l2_buf_ops;
	q->is_multiplanar = FUNC0(q->type);
	q->is_output = FUNC1(q->type);
	q->copy_timestamp = (q->timestamp_flags & V4L2_BUF_FLAG_TIMESTAMP_MASK)
			== V4L2_BUF_FLAG_TIMESTAMP_COPY;
	/*
	 * For compatibility with vb1: if QBUF hasn't been called yet, then
	 * return EPOLLERR as well. This only affects capture queues, output
	 * queues will always initialize waiting_for_buffers to false.
	 */
	q->quirk_poll_must_check_waiting_for_buffers = true;

	return FUNC3(q);
}