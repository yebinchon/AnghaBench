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
struct TYPE_2__ {int /*<<< orphan*/  pollq; } ;
struct iio_dma_buffer_queue {TYPE_1__ buffer; int /*<<< orphan*/  list_lock; } ;
struct iio_dma_buffer_block {struct iio_dma_buffer_queue* queue; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dma_buffer_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dma_buffer_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(struct iio_dma_buffer_block *block)
{
	struct iio_dma_buffer_queue *queue = block->queue;
	unsigned long flags;

	FUNC2(&queue->list_lock, flags);
	FUNC0(block);
	FUNC3(&queue->list_lock, flags);

	FUNC1(block);
	FUNC4(&queue->buffer.pollq, EPOLLIN | EPOLLRDNORM);
}