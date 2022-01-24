#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cookie; } ;
struct virt_dma_desc {TYPE_3__ tx; int /*<<< orphan*/  node; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct virt_dma_chan {int /*<<< orphan*/  (* desc_free ) (struct virt_dma_desc*) ;TYPE_2__ chan; int /*<<< orphan*/  lock; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct virt_dma_chan*,struct virt_dma_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct virt_dma_desc*) ; 
 struct virt_dma_chan* FUNC5 (int /*<<< orphan*/ ) ; 
 struct virt_dma_desc* FUNC6 (struct dma_async_tx_descriptor*) ; 

int FUNC7(struct dma_async_tx_descriptor *tx)
{
	struct virt_dma_chan *vc = FUNC5(tx->chan);
	struct virt_dma_desc *vd = FUNC6(tx);
	unsigned long flags;

	FUNC2(&vc->lock, flags);
	FUNC1(&vd->node);
	FUNC3(&vc->lock, flags);

	FUNC0(vc->chan.device->dev, "vchan %p: txd %p[%x]: freeing\n",
		vc, vd, vd->tx.cookie);
	vc->desc_free(vd);
	return 0;
}