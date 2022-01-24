#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t block_size; struct iio_dma_buffer_block** blocks; int /*<<< orphan*/ * active_block; } ;
struct TYPE_3__ {int bytes_per_datum; int length; } ;
struct iio_dma_buffer_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  incoming; TYPE_2__ fileio; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  outgoing; TYPE_1__ buffer; } ;
struct iio_dma_buffer_block {scalar_t__ state; size_t size; int /*<<< orphan*/  head; } ;
struct iio_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iio_dma_buffer_block**) ; 
 size_t FUNC1 (int,int) ; 
 int ENOMEM ; 
 scalar_t__ IIO_BLOCK_STATE_DEAD ; 
 scalar_t__ IIO_BLOCK_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dma_buffer_block*) ; 
 struct iio_dma_buffer_queue* FUNC5 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dma_buffer_block*) ; 
 struct iio_dma_buffer_block* FUNC7 (struct iio_dma_buffer_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct iio_buffer *buffer)
{
	struct iio_dma_buffer_queue *queue = FUNC5(buffer);
	struct iio_dma_buffer_block *block;
	bool try_reuse = false;
	size_t size;
	int ret = 0;
	int i;

	/*
	 * Split the buffer into two even parts. This is used as a double
	 * buffering scheme with usually one block at a time being used by the
	 * DMA and the other one by the application.
	 */
	size = FUNC1(queue->buffer.bytes_per_datum *
		queue->buffer.length, 2);

	FUNC9(&queue->lock);

	/* Allocations are page aligned */
	if (FUNC3(queue->fileio.block_size) == FUNC3(size))
		try_reuse = true;

	queue->fileio.block_size = size;
	queue->fileio.active_block = NULL;

	FUNC11(&queue->list_lock);
	for (i = 0; i < FUNC0(queue->fileio.blocks); i++) {
		block = queue->fileio.blocks[i];

		/* If we can't re-use it free it */
		if (block && (!FUNC6(block) || !try_reuse))
			block->state = IIO_BLOCK_STATE_DEAD;
	}

	/*
	 * At this point all blocks are either owned by the core or marked as
	 * dead. This means we can reset the lists without having to fear
	 * corrution.
	 */
	FUNC2(&queue->outgoing);
	FUNC12(&queue->list_lock);

	FUNC2(&queue->incoming);

	for (i = 0; i < FUNC0(queue->fileio.blocks); i++) {
		if (queue->fileio.blocks[i]) {
			block = queue->fileio.blocks[i];
			if (block->state == IIO_BLOCK_STATE_DEAD) {
				/* Could not reuse it */
				FUNC4(block);
				block = NULL;
			} else {
				block->size = size;
			}
		} else {
			block = NULL;
		}

		if (!block) {
			block = FUNC7(queue, size);
			if (!block) {
				ret = -ENOMEM;
				goto out_unlock;
			}
			queue->fileio.blocks[i] = block;
		}

		block->state = IIO_BLOCK_STATE_QUEUED;
		FUNC8(&block->head, &queue->incoming);
	}

out_unlock:
	FUNC10(&queue->lock);

	return ret;
}