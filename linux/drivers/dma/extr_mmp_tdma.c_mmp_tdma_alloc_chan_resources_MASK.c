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
struct TYPE_2__ {int /*<<< orphan*/  tx_submit; } ;
struct mmp_tdma_chan {scalar_t__ irq; int /*<<< orphan*/  dev; TYPE_1__ desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mmp_tdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct dma_chan*) ; 
 int /*<<< orphan*/  mmp_tdma_chan_handler ; 
 int /*<<< orphan*/  mmp_tdma_tx_submit ; 
 struct mmp_tdma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan)
{
	struct mmp_tdma_chan *tdmac = FUNC2(chan);
	int ret;

	FUNC1(&tdmac->desc, chan);
	tdmac->desc.tx_submit = mmp_tdma_tx_submit;

	if (tdmac->irq) {
		ret = FUNC0(tdmac->dev, tdmac->irq,
			mmp_tdma_chan_handler, 0, "tdma", tdmac);
		if (ret)
			return ret;
	}
	return 1;
}