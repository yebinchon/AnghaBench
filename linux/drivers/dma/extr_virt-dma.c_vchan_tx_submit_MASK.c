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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct virt_dma_chan {TYPE_2__ chan; int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_submitted; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct virt_dma_chan*,struct virt_dma_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virt_dma_chan* FUNC5 (int /*<<< orphan*/ ) ; 
 struct virt_dma_desc* FUNC6 (struct dma_async_tx_descriptor*) ; 

dma_cookie_t FUNC7(struct dma_async_tx_descriptor *tx)
{
	struct virt_dma_chan *vc = FUNC5(tx->chan);
	struct virt_dma_desc *vd = FUNC6(tx);
	unsigned long flags;
	dma_cookie_t cookie;

	FUNC3(&vc->lock, flags);
	cookie = FUNC1(tx);

	FUNC2(&vd->node, &vc->desc_submitted);
	FUNC4(&vc->lock, flags);

	FUNC0(vc->chan.device->dev, "vchan %p: txd %p[%x]: submitted\n",
		vc, vd, cookie);

	return cookie;
}