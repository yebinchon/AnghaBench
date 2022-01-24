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
struct iio_dma_buffer_queue {int active; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct iio_dev {int dummy; } ;
struct iio_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* abort ) (struct iio_dma_buffer_queue*) ;} ;

/* Variables and functions */
 struct iio_dma_buffer_queue* FUNC0 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dma_buffer_queue*) ; 

int FUNC4(struct iio_buffer *buffer,
	struct iio_dev *indio_dev)
{
	struct iio_dma_buffer_queue *queue = FUNC0(buffer);

	FUNC1(&queue->lock);
	queue->active = false;

	if (queue->ops && queue->ops->abort)
		queue->ops->abort(queue);
	FUNC2(&queue->lock);

	return 0;
}