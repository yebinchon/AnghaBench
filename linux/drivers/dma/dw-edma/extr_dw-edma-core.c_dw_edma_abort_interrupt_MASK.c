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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dw_edma_chan {int /*<<< orphan*/  status; int /*<<< orphan*/  request; TYPE_1__ vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDMA_REQ_NONE ; 
 int /*<<< orphan*/  EDMA_ST_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_edma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct dw_edma_chan *chan)
{
	struct virt_dma_desc *vd;
	unsigned long flags;

	FUNC0(chan);

	FUNC2(&chan->vc.lock, flags);
	vd = FUNC5(&chan->vc);
	if (vd) {
		FUNC1(&vd->node);
		FUNC4(vd);
	}
	FUNC3(&chan->vc.lock, flags);
	chan->request = EDMA_REQ_NONE;
	chan->status = EDMA_ST_IDLE;
}