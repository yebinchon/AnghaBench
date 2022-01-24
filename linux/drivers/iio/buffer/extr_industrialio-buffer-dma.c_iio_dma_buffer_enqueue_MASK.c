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
struct iio_dma_buffer_queue {int /*<<< orphan*/  incoming; scalar_t__ active; } ;
struct iio_dma_buffer_block {scalar_t__ state; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 scalar_t__ IIO_BLOCK_STATE_DEAD ; 
 scalar_t__ IIO_BLOCK_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dma_buffer_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dma_buffer_queue*,struct iio_dma_buffer_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iio_dma_buffer_queue *queue,
	struct iio_dma_buffer_block *block)
{
	if (block->state == IIO_BLOCK_STATE_DEAD) {
		FUNC0(block);
	} else if (queue->active) {
		FUNC1(queue, block);
	} else {
		block->state = IIO_BLOCK_STATE_QUEUED;
		FUNC2(&block->head, &queue->incoming);
	}
}