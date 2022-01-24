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
struct virtio_gpu_queue {int /*<<< orphan*/  dequeue_work; int /*<<< orphan*/  ack_queue; int /*<<< orphan*/  qlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct virtio_gpu_queue *vgvq,
			       void (*work_func)(struct work_struct *work))
{
	FUNC2(&vgvq->qlock);
	FUNC1(&vgvq->ack_queue);
	FUNC0(&vgvq->dequeue_work, work_func);
}