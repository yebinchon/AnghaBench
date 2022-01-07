
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct virt_dma_desc {int tx; } ;
struct TYPE_2__ {int node; } ;
struct pl08x_txd {int ccfg; int * llis_va; TYPE_1__ vd; } ;
struct pl08x_phy_chan {scalar_t__ reg_config; scalar_t__ reg_control; scalar_t__ ftdmac020; int id; } ;
struct pl08x_driver_data {scalar_t__ base; } ;
struct pl08x_dma_chan {struct pl08x_txd* at; int vc; struct pl08x_phy_chan* phychan; struct pl08x_driver_data* host; } ;


 int BIT (int ) ;
 int FTDMAC020_CH_CFG_BUSY ;
 int FTDMAC020_CH_CSR_EN ;
 int PL080_CONFIG_ACTIVE ;
 int PL080_CONFIG_ENABLE ;
 scalar_t__ PL080_EN_CHAN ;
 int cpu_relax () ;
 int list_del (int *) ;
 scalar_t__ pl08x_phy_channel_busy (struct pl08x_phy_chan*) ;
 int pl08x_write_lli (struct pl08x_driver_data*,struct pl08x_phy_chan*,int *,int ) ;
 int readl (scalar_t__) ;
 struct pl08x_txd* to_pl08x_txd (int *) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pl08x_start_next_txd(struct pl08x_dma_chan *plchan)
{
 struct pl08x_driver_data *pl08x = plchan->host;
 struct pl08x_phy_chan *phychan = plchan->phychan;
 struct virt_dma_desc *vd = vchan_next_desc(&plchan->vc);
 struct pl08x_txd *txd = to_pl08x_txd(&vd->tx);
 u32 val;

 list_del(&txd->vd.node);

 plchan->at = txd;


 while (pl08x_phy_channel_busy(phychan))
  cpu_relax();

 pl08x_write_lli(pl08x, phychan, &txd->llis_va[0], txd->ccfg);



 while (readl(pl08x->base + PL080_EN_CHAN) & BIT(phychan->id))
  cpu_relax();


 if (phychan->ftdmac020) {
  val = readl(phychan->reg_config);
  while (val & FTDMAC020_CH_CFG_BUSY)
   val = readl(phychan->reg_config);

  val = readl(phychan->reg_control);
  while (val & FTDMAC020_CH_CSR_EN)
   val = readl(phychan->reg_control);

  writel(val | FTDMAC020_CH_CSR_EN,
         phychan->reg_control);
 } else {
  val = readl(phychan->reg_config);
  while ((val & PL080_CONFIG_ACTIVE) ||
         (val & PL080_CONFIG_ENABLE))
   val = readl(phychan->reg_config);

  writel(val | PL080_CONFIG_ENABLE, phychan->reg_config);
 }
}
