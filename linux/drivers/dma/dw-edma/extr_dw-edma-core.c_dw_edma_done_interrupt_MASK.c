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
struct dw_edma_desc {int /*<<< orphan*/  chunks_alloc; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dw_edma_chan {int request; TYPE_1__ vc; void* status; } ;

/* Variables and functions */
#define  EDMA_REQ_NONE 130 
#define  EDMA_REQ_PAUSE 129 
#define  EDMA_REQ_STOP 128 
 void* EDMA_ST_BUSY ; 
 void* EDMA_ST_IDLE ; 
 void* EDMA_ST_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_edma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_edma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC6 (TYPE_1__*) ; 
 struct dw_edma_desc* FUNC7 (struct virt_dma_desc*) ; 

__attribute__((used)) static void FUNC8(struct dw_edma_chan *chan)
{
	struct dw_edma_desc *desc;
	struct virt_dma_desc *vd;
	unsigned long flags;

	FUNC1(chan);

	FUNC3(&chan->vc.lock, flags);
	vd = FUNC6(&chan->vc);
	if (vd) {
		switch (chan->request) {
		case EDMA_REQ_NONE:
			desc = FUNC7(vd);
			if (desc->chunks_alloc) {
				chan->status = EDMA_ST_BUSY;
				FUNC0(chan);
			} else {
				FUNC2(&vd->node);
				FUNC5(vd);
				chan->status = EDMA_ST_IDLE;
			}
			break;

		case EDMA_REQ_STOP:
			FUNC2(&vd->node);
			FUNC5(vd);
			chan->request = EDMA_REQ_NONE;
			chan->status = EDMA_ST_IDLE;
			break;

		case EDMA_REQ_PAUSE:
			chan->request = EDMA_REQ_NONE;
			chan->status = EDMA_ST_PAUSE;
			break;

		default:
			break;
		}
	}
	FUNC4(&chan->vc.lock, flags);
}