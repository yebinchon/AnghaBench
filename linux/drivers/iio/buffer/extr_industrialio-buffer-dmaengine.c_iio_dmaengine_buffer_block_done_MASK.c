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
struct iio_dma_buffer_block {TYPE_1__* queue; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dma_buffer_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct iio_dma_buffer_block *block = data;
	unsigned long flags;

	FUNC2(&block->queue->list_lock, flags);
	FUNC1(&block->head);
	FUNC3(&block->queue->list_lock, flags);
	FUNC0(block);
}