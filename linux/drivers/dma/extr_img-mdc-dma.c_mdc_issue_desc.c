
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct virt_dma_desc {int tx; int node; } ;
struct mdc_tx_desc {int list_phys; } ;
struct mdc_dma {TYPE_1__* soc; } ;
struct mdc_chan {int thread; int chan_nr; struct mdc_tx_desc* desc; int vc; struct mdc_dma* mdma; } ;
struct TYPE_2__ {int (* enable_chan ) (struct mdc_chan*) ;} ;


 int MDC_CONTROL_AND_STATUS ;
 int MDC_CONTROL_AND_STATUS_LIST_EN ;
 int MDC_GENERAL_CONFIG ;
 int MDC_GENERAL_CONFIG_IEN ;
 int MDC_GENERAL_CONFIG_LEVEL_INT ;
 int MDC_GENERAL_CONFIG_LIST_IEN ;
 int MDC_GENERAL_CONFIG_PHYSICAL_R ;
 int MDC_GENERAL_CONFIG_PHYSICAL_W ;
 int MDC_LIST_NODE_ADDRESS ;
 int MDC_READ_PORT_CONFIG ;
 int MDC_READ_PORT_CONFIG_RTHREAD_SHIFT ;
 int MDC_READ_PORT_CONFIG_STHREAD_SHIFT ;
 int MDC_READ_PORT_CONFIG_WTHREAD_SHIFT ;
 int dev_dbg (int ,char*,int ) ;
 int list_del (int *) ;
 int mdc_chan_readl (struct mdc_chan*,int ) ;
 int mdc_chan_writel (struct mdc_chan*,int,int ) ;
 int mdma2dev (struct mdc_dma*) ;
 int stub1 (struct mdc_chan*) ;
 struct mdc_tx_desc* to_mdc_desc (int *) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void mdc_issue_desc(struct mdc_chan *mchan)
{
 struct mdc_dma *mdma = mchan->mdma;
 struct virt_dma_desc *vd;
 struct mdc_tx_desc *mdesc;
 u32 val;

 vd = vchan_next_desc(&mchan->vc);
 if (!vd)
  return;

 list_del(&vd->node);

 mdesc = to_mdc_desc(&vd->tx);
 mchan->desc = mdesc;

 dev_dbg(mdma2dev(mdma), "Issuing descriptor on channel %d\n",
  mchan->chan_nr);

 mdma->soc->enable_chan(mchan);

 val = mdc_chan_readl(mchan, MDC_GENERAL_CONFIG);
 val |= MDC_GENERAL_CONFIG_LIST_IEN | MDC_GENERAL_CONFIG_IEN |
  MDC_GENERAL_CONFIG_LEVEL_INT | MDC_GENERAL_CONFIG_PHYSICAL_W |
  MDC_GENERAL_CONFIG_PHYSICAL_R;
 mdc_chan_writel(mchan, val, MDC_GENERAL_CONFIG);
 val = (mchan->thread << MDC_READ_PORT_CONFIG_STHREAD_SHIFT) |
  (mchan->thread << MDC_READ_PORT_CONFIG_RTHREAD_SHIFT) |
  (mchan->thread << MDC_READ_PORT_CONFIG_WTHREAD_SHIFT);
 mdc_chan_writel(mchan, val, MDC_READ_PORT_CONFIG);
 mdc_chan_writel(mchan, mdesc->list_phys, MDC_LIST_NODE_ADDRESS);
 val = mdc_chan_readl(mchan, MDC_CONTROL_AND_STATUS);
 val |= MDC_CONTROL_AND_STATUS_LIST_EN;
 mdc_chan_writel(mchan, val, MDC_CONTROL_AND_STATUS);
}
