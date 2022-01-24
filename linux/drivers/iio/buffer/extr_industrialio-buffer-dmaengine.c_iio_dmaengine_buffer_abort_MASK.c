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
struct iio_dma_buffer_queue {int /*<<< orphan*/  buffer; } ;
struct dmaengine_buffer {int /*<<< orphan*/  active; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dmaengine_buffer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dma_buffer_queue*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iio_dma_buffer_queue *queue)
{
	struct dmaengine_buffer *dmaengine_buffer =
		FUNC1(&queue->buffer);

	FUNC0(dmaengine_buffer->chan);
	FUNC2(queue, &dmaengine_buffer->active);
}