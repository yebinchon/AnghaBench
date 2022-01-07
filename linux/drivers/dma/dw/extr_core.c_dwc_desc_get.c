
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct dw_dma_chan {TYPE_2__ chan; int descs_allocated; } ;
struct dw_dma {int desc_pool; } ;
struct TYPE_3__ {int phys; int flags; int tx_submit; } ;
struct dw_desc {TYPE_1__ txd; int tx_list; } ;
typedef int dma_addr_t ;


 int DMA_CTRL_ACK ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,TYPE_2__*) ;
 struct dw_desc* dma_pool_zalloc (int ,int ,int *) ;
 int dwc_tx_submit ;
 struct dw_dma* to_dw_dma (int ) ;

__attribute__((used)) static struct dw_desc *dwc_desc_get(struct dw_dma_chan *dwc)
{
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);
 struct dw_desc *desc;
 dma_addr_t phys;

 desc = dma_pool_zalloc(dw->desc_pool, GFP_ATOMIC, &phys);
 if (!desc)
  return ((void*)0);

 dwc->descs_allocated++;
 INIT_LIST_HEAD(&desc->tx_list);
 dma_async_tx_descriptor_init(&desc->txd, &dwc->chan);
 desc->txd.tx_submit = dwc_tx_submit;
 desc->txd.flags = DMA_CTRL_ACK;
 desc->txd.phys = phys;
 return desc;
}
