#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int buf_struct_size; scalar_t__ is_output; int /*<<< orphan*/  dma_dir; scalar_t__ bidirectional; int /*<<< orphan*/  memory; int /*<<< orphan*/  done_wq; int /*<<< orphan*/  mmap_lock; int /*<<< orphan*/  done_lock; int /*<<< orphan*/  done_list; int /*<<< orphan*/  queued_list; int /*<<< orphan*/  supports_requests; scalar_t__ requires_requests; TYPE_1__* ops; int /*<<< orphan*/  io_modes; int /*<<< orphan*/  type; int /*<<< orphan*/  mem_ops; } ;
struct vb2_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf_queue; int /*<<< orphan*/  queue_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VB2_MEMORY_UNKNOWN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct vb2_queue *q)
{
	/*
	 * Sanity check
	 */
	if (FUNC1(!q)			  ||
	    FUNC1(!q->ops)		  ||
	    FUNC1(!q->mem_ops)	  ||
	    FUNC1(!q->type)		  ||
	    FUNC1(!q->io_modes)	  ||
	    FUNC1(!q->ops->queue_setup) ||
	    FUNC1(!q->ops->buf_queue))
		return -EINVAL;

	if (FUNC1(q->requires_requests && !q->supports_requests))
		return -EINVAL;

	FUNC0(&q->queued_list);
	FUNC0(&q->done_list);
	FUNC4(&q->done_lock);
	FUNC3(&q->mmap_lock);
	FUNC2(&q->done_wq);

	q->memory = VB2_MEMORY_UNKNOWN;

	if (q->buf_struct_size == 0)
		q->buf_struct_size = sizeof(struct vb2_buffer);

	if (q->bidirectional)
		q->dma_dir = DMA_BIDIRECTIONAL;
	else
		q->dma_dir = q->is_output ? DMA_TO_DEVICE : DMA_FROM_DEVICE;

	return 0;
}