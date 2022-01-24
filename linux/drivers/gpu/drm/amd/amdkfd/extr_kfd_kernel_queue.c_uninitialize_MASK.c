#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* uninitialize ) (struct kernel_queue*) ;} ;
struct kernel_queue {TYPE_3__* queue; int /*<<< orphan*/  dev; int /*<<< orphan*/  pq; TYPE_1__ ops_asic_specific; int /*<<< orphan*/  wptr_mem; int /*<<< orphan*/  rptr_mem; TYPE_4__* mqd_mgr; int /*<<< orphan*/  fence_mem_obj; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* free_mqd ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* destroy_mqd ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  doorbell_ptr; } ;
struct TYPE_8__ {TYPE_2__ properties; int /*<<< orphan*/  mqd_mem_obj; int /*<<< orphan*/  mqd; int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  KFD_PREEMPT_TYPE_WAVEFRONT_RESET ; 
 scalar_t__ KFD_QUEUE_TYPE_DIQ ; 
 scalar_t__ KFD_QUEUE_TYPE_HIQ ; 
 int /*<<< orphan*/  KFD_UNMAP_LATENCY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kernel_queue*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct kernel_queue *kq)
{
	if (kq->queue->properties.type == KFD_QUEUE_TYPE_HIQ)
		kq->mqd_mgr->destroy_mqd(kq->mqd_mgr,
					kq->queue->mqd,
					KFD_PREEMPT_TYPE_WAVEFRONT_RESET,
					KFD_UNMAP_LATENCY_MS,
					kq->queue->pipe,
					kq->queue->queue);
	else if (kq->queue->properties.type == KFD_QUEUE_TYPE_DIQ)
		FUNC0(kq->dev, kq->fence_mem_obj);

	kq->mqd_mgr->free_mqd(kq->mqd_mgr, kq->queue->mqd,
				kq->queue->mqd_mem_obj);

	FUNC0(kq->dev, kq->rptr_mem);
	FUNC0(kq->dev, kq->wptr_mem);
	kq->ops_asic_specific.uninitialize(kq);
	FUNC0(kq->dev, kq->pq);
	FUNC1(kq->dev,
					kq->queue->properties.doorbell_ptr);
	FUNC5(kq->queue);
}