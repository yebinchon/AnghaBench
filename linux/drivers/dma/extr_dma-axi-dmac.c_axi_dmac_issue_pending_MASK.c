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
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct axi_dmac_chan {TYPE_1__ vchan; } ;
struct axi_dmac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_DMAC_CTRL_ENABLE ; 
 int /*<<< orphan*/  AXI_DMAC_REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct axi_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axi_dmac* FUNC2 (struct axi_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct axi_dmac_chan* FUNC5 (struct dma_chan*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *c)
{
	struct axi_dmac_chan *chan = FUNC5(c);
	struct axi_dmac *dmac = FUNC2(chan);
	unsigned long flags;

	FUNC1(dmac, AXI_DMAC_REG_CTRL, AXI_DMAC_CTRL_ENABLE);

	FUNC3(&chan->vchan.lock, flags);
	if (FUNC6(&chan->vchan))
		FUNC0(chan);
	FUNC4(&chan->vchan.lock, flags);
}