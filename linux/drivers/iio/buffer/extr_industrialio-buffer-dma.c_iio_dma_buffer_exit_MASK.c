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
struct TYPE_4__ {int /*<<< orphan*/ * active_block; TYPE_2__** blocks; } ;
struct iio_dma_buffer_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ops; TYPE_1__ fileio; int /*<<< orphan*/  incoming; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  outgoing; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  IIO_BLOCK_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct iio_dma_buffer_queue *queue)
{
	unsigned int i;

	FUNC3(&queue->lock);

	FUNC5(&queue->list_lock);
	for (i = 0; i < FUNC0(queue->fileio.blocks); i++) {
		if (!queue->fileio.blocks[i])
			continue;
		queue->fileio.blocks[i]->state = IIO_BLOCK_STATE_DEAD;
	}
	FUNC1(&queue->outgoing);
	FUNC6(&queue->list_lock);

	FUNC1(&queue->incoming);

	for (i = 0; i < FUNC0(queue->fileio.blocks); i++) {
		if (!queue->fileio.blocks[i])
			continue;
		FUNC2(queue->fileio.blocks[i]);
		queue->fileio.blocks[i] = NULL;
	}
	queue->fileio.active_block = NULL;
	queue->ops = NULL;

	FUNC4(&queue->lock);
}