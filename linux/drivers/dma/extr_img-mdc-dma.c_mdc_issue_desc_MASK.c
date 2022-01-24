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
typedef  int u32 ;
struct virt_dma_desc {int /*<<< orphan*/  tx; int /*<<< orphan*/  node; } ;
struct mdc_tx_desc {int list_phys; } ;
struct mdc_dma {TYPE_1__* soc; } ;
struct mdc_chan {int thread; int /*<<< orphan*/  chan_nr; struct mdc_tx_desc* desc; int /*<<< orphan*/  vc; struct mdc_dma* mdma; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_chan ) (struct mdc_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MDC_CONTROL_AND_STATUS ; 
 int MDC_CONTROL_AND_STATUS_LIST_EN ; 
 int /*<<< orphan*/  MDC_GENERAL_CONFIG ; 
 int MDC_GENERAL_CONFIG_IEN ; 
 int MDC_GENERAL_CONFIG_LEVEL_INT ; 
 int MDC_GENERAL_CONFIG_LIST_IEN ; 
 int MDC_GENERAL_CONFIG_PHYSICAL_R ; 
 int MDC_GENERAL_CONFIG_PHYSICAL_W ; 
 int /*<<< orphan*/  MDC_LIST_NODE_ADDRESS ; 
 int /*<<< orphan*/  MDC_READ_PORT_CONFIG ; 
 int MDC_READ_PORT_CONFIG_RTHREAD_SHIFT ; 
 int MDC_READ_PORT_CONFIG_STHREAD_SHIFT ; 
 int MDC_READ_PORT_CONFIG_WTHREAD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mdc_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mdc_chan*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdc_dma*) ; 
 int /*<<< orphan*/  FUNC5 (struct mdc_chan*) ; 
 struct mdc_tx_desc* FUNC6 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mdc_chan *mchan)
{
	struct mdc_dma *mdma = mchan->mdma;
	struct virt_dma_desc *vd;
	struct mdc_tx_desc *mdesc;
	u32 val;

	vd = FUNC7(&mchan->vc);
	if (!vd)
		return;

	FUNC1(&vd->node);

	mdesc = FUNC6(&vd->tx);
	mchan->desc = mdesc;

	FUNC0(FUNC4(mdma), "Issuing descriptor on channel %d\n",
		mchan->chan_nr);

	mdma->soc->enable_chan(mchan);

	val = FUNC2(mchan, MDC_GENERAL_CONFIG);
	val |= MDC_GENERAL_CONFIG_LIST_IEN | MDC_GENERAL_CONFIG_IEN |
		MDC_GENERAL_CONFIG_LEVEL_INT | MDC_GENERAL_CONFIG_PHYSICAL_W |
		MDC_GENERAL_CONFIG_PHYSICAL_R;
	FUNC3(mchan, val, MDC_GENERAL_CONFIG);
	val = (mchan->thread << MDC_READ_PORT_CONFIG_STHREAD_SHIFT) |
		(mchan->thread << MDC_READ_PORT_CONFIG_RTHREAD_SHIFT) |
		(mchan->thread << MDC_READ_PORT_CONFIG_WTHREAD_SHIFT);
	FUNC3(mchan, val, MDC_READ_PORT_CONFIG);
	FUNC3(mchan, mdesc->list_phys, MDC_LIST_NODE_ADDRESS);
	val = FUNC2(mchan, MDC_CONTROL_AND_STATUS);
	val |= MDC_CONTROL_AND_STATUS_LIST_EN;
	FUNC3(mchan, val, MDC_CONTROL_AND_STATUS);
}