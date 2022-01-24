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
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct pl08x_txd {int /*<<< orphan*/  ccfg; int /*<<< orphan*/ * llis_va; TYPE_1__ vd; } ;
struct pl08x_phy_chan {scalar_t__ reg_config; scalar_t__ reg_control; scalar_t__ ftdmac020; int /*<<< orphan*/  id; } ;
struct pl08x_driver_data {scalar_t__ base; } ;
struct pl08x_dma_chan {struct pl08x_txd* at; int /*<<< orphan*/  vc; struct pl08x_phy_chan* phychan; struct pl08x_driver_data* host; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FTDMAC020_CH_CFG_BUSY ; 
 int FTDMAC020_CH_CSR_EN ; 
 int PL080_CONFIG_ACTIVE ; 
 int PL080_CONFIG_ENABLE ; 
 scalar_t__ PL080_EN_CHAN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct pl08x_phy_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct pl08x_driver_data*,struct pl08x_phy_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 struct pl08x_txd* FUNC6 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct pl08x_dma_chan *plchan)
{
	struct pl08x_driver_data *pl08x = plchan->host;
	struct pl08x_phy_chan *phychan = plchan->phychan;
	struct virt_dma_desc *vd = FUNC7(&plchan->vc);
	struct pl08x_txd *txd = FUNC6(&vd->tx);
	u32 val;

	FUNC2(&txd->vd.node);

	plchan->at = txd;

	/* Wait for channel inactive */
	while (FUNC3(phychan))
		FUNC1();

	FUNC4(pl08x, phychan, &txd->llis_va[0], txd->ccfg);

	/* Enable the DMA channel */
	/* Do not access config register until channel shows as disabled */
	while (FUNC5(pl08x->base + PL080_EN_CHAN) & FUNC0(phychan->id))
		FUNC1();

	/* Do not access config register until channel shows as inactive */
	if (phychan->ftdmac020) {
		val = FUNC5(phychan->reg_config);
		while (val & FTDMAC020_CH_CFG_BUSY)
			val = FUNC5(phychan->reg_config);

		val = FUNC5(phychan->reg_control);
		while (val & FTDMAC020_CH_CSR_EN)
			val = FUNC5(phychan->reg_control);

		FUNC8(val | FTDMAC020_CH_CSR_EN,
		       phychan->reg_control);
	} else {
		val = FUNC5(phychan->reg_config);
		while ((val & PL080_CONFIG_ACTIVE) ||
		       (val & PL080_CONFIG_ENABLE))
			val = FUNC5(phychan->reg_config);

		FUNC8(val | PL080_CONFIG_ENABLE, phychan->reg_config);
	}
}