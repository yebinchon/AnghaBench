#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sprd_dma_dev {struct sprd_dma_chn* channels; scalar_t__ glb_base; } ;
struct sprd_dma_desc {int /*<<< orphan*/  vd; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {scalar_t__ phy_addr; } ;
struct sprd_dma_chn {TYPE_2__ vc; struct sprd_dma_desc* cur_desc; TYPE_1__ linklist; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum sprd_dma_req_mode { ____Placeholder_sprd_dma_req_mode } sprd_dma_req_mode ;
typedef  enum sprd_dma_int_type { ____Placeholder_sprd_dma_int_type } sprd_dma_int_type ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SPRD_DMA_GLB_INT_MSK_STS ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sprd_dma_desc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_dma_chn*) ; 
 int FUNC6 (struct sprd_dma_chn*) ; 
 int FUNC7 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC8 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct sprd_dma_dev *sdev = (struct sprd_dma_dev *)dev_id;
	u32 irq_status = FUNC1(sdev->glb_base + SPRD_DMA_GLB_INT_MSK_STS);
	struct sprd_dma_chn *schan;
	struct sprd_dma_desc *sdesc;
	enum sprd_dma_req_mode req_type;
	enum sprd_dma_int_type int_type;
	bool trans_done = false, cyclic = false;
	u32 i;

	while (irq_status) {
		i = FUNC0(irq_status);
		irq_status &= (irq_status - 1);
		schan = &sdev->channels[i];

		FUNC2(&schan->vc.lock);

		sdesc = schan->cur_desc;
		if (!sdesc) {
			FUNC3(&schan->vc.lock);
			return IRQ_HANDLED;
		}

		int_type = FUNC6(schan);
		req_type = FUNC7(schan);
		FUNC5(schan);

		/* cyclic mode schedule callback */
		cyclic = schan->linklist.phy_addr ? true : false;
		if (cyclic == true) {
			FUNC10(&sdesc->vd);
		} else {
			/* Check if the dma request descriptor is done. */
			trans_done = FUNC4(sdesc, int_type,
							       req_type);
			if (trans_done == true) {
				FUNC9(&sdesc->vd);
				schan->cur_desc = NULL;
				FUNC8(schan);
			}
		}
		FUNC3(&schan->vc.lock);
	}

	return IRQ_HANDLED;
}