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
struct virt_dma_desc {int dummy; } ;
struct fsl_qdma_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  comp_free; } ;
struct fsl_qdma_comp {int /*<<< orphan*/  list; TYPE_1__* qchan; } ;
struct TYPE_2__ {struct fsl_qdma_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_qdma_comp* FUNC3 (struct virt_dma_desc*) ; 

__attribute__((used)) static void FUNC4(struct virt_dma_desc *vdesc)
{
	unsigned long flags;
	struct fsl_qdma_comp *fsl_comp;
	struct fsl_qdma_queue *fsl_queue;

	fsl_comp = FUNC3(vdesc);
	fsl_queue = fsl_comp->qchan->queue;

	FUNC1(&fsl_queue->queue_lock, flags);
	FUNC0(&fsl_comp->list, &fsl_queue->comp_free);
	FUNC2(&fsl_queue->queue_lock, flags);
}