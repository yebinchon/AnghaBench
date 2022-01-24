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
struct mtk_cqdma_vdesc {size_t residue; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mtk_cqdma_vchan {TYPE_1__ vc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,size_t) ; 
 struct virt_dma_desc* FUNC2 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_cqdma_vchan* FUNC5 (struct dma_chan*) ; 
 struct mtk_cqdma_vdesc* FUNC6 (struct virt_dma_desc*) ; 

__attribute__((used)) static enum dma_status FUNC7(struct dma_chan *c,
					   dma_cookie_t cookie,
					   struct dma_tx_state *txstate)
{
	struct mtk_cqdma_vchan *cvc = FUNC5(c);
	struct mtk_cqdma_vdesc *cvd;
	struct virt_dma_desc *vd;
	enum dma_status ret;
	unsigned long flags;
	size_t bytes = 0;

	ret = FUNC0(c, cookie, txstate);
	if (ret == DMA_COMPLETE || !txstate)
		return ret;

	FUNC3(&cvc->vc.lock, flags);
	vd = FUNC2(c, cookie);
	FUNC4(&cvc->vc.lock, flags);

	if (vd) {
		cvd = FUNC6(vd);
		bytes = cvd->residue;
	}

	FUNC1(txstate, bytes);

	return ret;
}