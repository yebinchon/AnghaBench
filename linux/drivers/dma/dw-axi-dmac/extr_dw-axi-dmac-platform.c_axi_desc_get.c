
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dw_axi_dma {int desc_pool; } ;
struct TYPE_4__ {int phys; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct axi_dma_desc {struct axi_dma_chan* chan; TYPE_2__ vd; int xfer_list; } ;
struct axi_dma_chan {int descs_allocated; TYPE_3__* chip; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {struct dw_axi_dma* dw; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 int chan2dev (struct axi_dma_chan*) ;
 int dev_err (int ,char*,int ) ;
 struct axi_dma_desc* dma_pool_zalloc (int ,int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct axi_dma_desc *axi_desc_get(struct axi_dma_chan *chan)
{
 struct dw_axi_dma *dw = chan->chip->dw;
 struct axi_dma_desc *desc;
 dma_addr_t phys;

 desc = dma_pool_zalloc(dw->desc_pool, GFP_NOWAIT, &phys);
 if (unlikely(!desc)) {
  dev_err(chan2dev(chan), "%s: not enough descriptors available\n",
   axi_chan_name(chan));
  return ((void*)0);
 }

 atomic_inc(&chan->descs_allocated);
 INIT_LIST_HEAD(&desc->xfer_list);
 desc->vd.tx.phys = phys;
 desc->chan = chan;

 return desc;
}
