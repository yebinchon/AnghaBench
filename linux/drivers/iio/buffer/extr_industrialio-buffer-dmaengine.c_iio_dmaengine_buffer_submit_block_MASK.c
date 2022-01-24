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
struct iio_dma_buffer_queue {int /*<<< orphan*/  buffer; } ;
struct iio_dma_buffer_block {int /*<<< orphan*/  head; int /*<<< orphan*/  bytes_used; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; } ;
struct dmaengine_buffer {int /*<<< orphan*/  chan; TYPE_1__ queue; int /*<<< orphan*/  active; int /*<<< orphan*/  align; int /*<<< orphan*/  max_size; } ;
struct dma_async_tx_descriptor {struct iio_dma_buffer_block* callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 struct dmaengine_buffer* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_dmaengine_buffer_block_done ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct iio_dma_buffer_queue *queue,
	struct iio_dma_buffer_block *block)
{
	struct dmaengine_buffer *dmaengine_buffer =
		FUNC4(&queue->buffer);
	struct dma_async_tx_descriptor *desc;
	dma_cookie_t cookie;

	block->bytes_used = FUNC6(block->size, dmaengine_buffer->max_size);
	block->bytes_used = FUNC7(block->bytes_used,
			dmaengine_buffer->align);

	desc = FUNC2(dmaengine_buffer->chan,
		block->phys_addr, block->bytes_used, DMA_DEV_TO_MEM,
		DMA_PREP_INTERRUPT);
	if (!desc)
		return -ENOMEM;

	desc->callback = iio_dmaengine_buffer_block_done;
	desc->callback_param = block;

	cookie = FUNC3(desc);
	if (FUNC1(cookie))
		return FUNC1(cookie);

	FUNC8(&dmaengine_buffer->queue.list_lock);
	FUNC5(&block->head, &dmaengine_buffer->active);
	FUNC9(&dmaengine_buffer->queue.list_lock);

	FUNC0(dmaengine_buffer->chan);

	return 0;
}