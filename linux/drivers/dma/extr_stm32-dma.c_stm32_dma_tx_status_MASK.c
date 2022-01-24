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
typedef  int /*<<< orphan*/  u32 ;
struct virt_dma_desc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct stm32_dma_chan {TYPE_3__ vchan; int /*<<< orphan*/  next_sg; TYPE_4__* desc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;
struct TYPE_6__ {scalar_t__ cookie; } ;
struct TYPE_7__ {TYPE_1__ tx; } ;
struct TYPE_9__ {TYPE_2__ vdesc; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_dma_chan*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct stm32_dma_chan* FUNC5 (struct dma_chan*) ; 
 TYPE_4__* FUNC6 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC7 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static enum dma_status FUNC8(struct dma_chan *c,
					   dma_cookie_t cookie,
					   struct dma_tx_state *state)
{
	struct stm32_dma_chan *chan = FUNC5(c);
	struct virt_dma_desc *vdesc;
	enum dma_status status;
	unsigned long flags;
	u32 residue = 0;

	status = FUNC0(c, cookie, state);
	if (status == DMA_COMPLETE || !state)
		return status;

	FUNC2(&chan->vchan.lock, flags);
	vdesc = FUNC7(&chan->vchan, cookie);
	if (chan->desc && cookie == chan->desc->vdesc.tx.cookie)
		residue = FUNC4(chan, chan->desc,
						 chan->next_sg);
	else if (vdesc)
		residue = FUNC4(chan,
						 FUNC6(vdesc), 0);
	FUNC1(state, residue);

	FUNC3(&chan->vchan.lock, flags);

	return status;
}