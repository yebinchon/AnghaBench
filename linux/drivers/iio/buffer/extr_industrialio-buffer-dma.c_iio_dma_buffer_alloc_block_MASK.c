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
struct iio_dma_buffer_queue {int /*<<< orphan*/  buffer; int /*<<< orphan*/  dev; } ;
struct iio_dma_buffer_block {size_t size; int /*<<< orphan*/  kref; int /*<<< orphan*/  head; struct iio_dma_buffer_queue* queue; int /*<<< orphan*/  state; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IIO_BLOCK_STATE_DEQUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dma_buffer_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct iio_dma_buffer_block* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iio_dma_buffer_block *FUNC7(
	struct iio_dma_buffer_queue *queue, size_t size)
{
	struct iio_dma_buffer_block *block;

	block = FUNC6(sizeof(*block), GFP_KERNEL);
	if (!block)
		return NULL;

	block->vaddr = FUNC2(queue->dev, FUNC1(size),
		&block->phys_addr, GFP_KERNEL);
	if (!block->vaddr) {
		FUNC4(block);
		return NULL;
	}

	block->size = size;
	block->state = IIO_BLOCK_STATE_DEQUEUED;
	block->queue = queue;
	FUNC0(&block->head);
	FUNC5(&block->kref);

	FUNC3(&queue->buffer);

	return block;
}