#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct axi_dmac_chan {TYPE_1__ vchan; int /*<<< orphan*/  active_descs; int /*<<< orphan*/ * next_desc; } ;
struct axi_dmac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_DMAC_REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axi_dmac* FUNC2 (struct axi_dmac_chan*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct axi_dmac_chan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *c)
{
	struct axi_dmac_chan *chan = FUNC6(c);
	struct axi_dmac *dmac = FUNC2(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC4(&chan->vchan.lock, flags);
	FUNC1(dmac, AXI_DMAC_REG_CTRL, 0);
	chan->next_desc = NULL;
	FUNC8(&chan->vchan, &head);
	FUNC3(&chan->active_descs, &head);
	FUNC5(&chan->vchan.lock, flags);

	FUNC7(&chan->vchan, &head);

	return 0;
}