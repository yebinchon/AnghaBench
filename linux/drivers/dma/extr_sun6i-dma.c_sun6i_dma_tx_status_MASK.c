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
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sun6i_vchan {TYPE_1__ vc; struct sun6i_pchan* phy; } ;
struct sun6i_pchan {int /*<<< orphan*/  desc; } ;
struct sun6i_dma_lli {scalar_t__ len; struct sun6i_dma_lli* v_lli_next; } ;
struct sun6i_desc {struct sun6i_dma_lli* v_lli; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t FUNC4 (struct sun6i_pchan*) ; 
 struct sun6i_desc* FUNC5 (int /*<<< orphan*/ *) ; 
 struct sun6i_vchan* FUNC6 (struct dma_chan*) ; 
 struct virt_dma_desc* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum dma_status FUNC8(struct dma_chan *chan,
					   dma_cookie_t cookie,
					   struct dma_tx_state *state)
{
	struct sun6i_vchan *vchan = FUNC6(chan);
	struct sun6i_pchan *pchan = vchan->phy;
	struct sun6i_dma_lli *lli;
	struct virt_dma_desc *vd;
	struct sun6i_desc *txd;
	enum dma_status ret;
	unsigned long flags;
	size_t bytes = 0;

	ret = FUNC0(chan, cookie, state);
	if (ret == DMA_COMPLETE || !state)
		return ret;

	FUNC2(&vchan->vc.lock, flags);

	vd = FUNC7(&vchan->vc, cookie);
	txd = FUNC5(&vd->tx);

	if (vd) {
		for (lli = txd->v_lli; lli != NULL; lli = lli->v_lli_next)
			bytes += lli->len;
	} else if (!pchan || !pchan->desc) {
		bytes = 0;
	} else {
		bytes = FUNC4(pchan);
	}

	FUNC3(&vchan->vc.lock, flags);

	FUNC1(state, bytes);

	return ret;
}