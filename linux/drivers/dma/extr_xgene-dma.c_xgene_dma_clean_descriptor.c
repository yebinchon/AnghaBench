
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phys; } ;
struct xgene_dma_desc_sw {TYPE_1__ tx; int node; } ;
struct xgene_dma_chan {int desc_pool; } ;


 int chan_dbg (struct xgene_dma_chan*,char*,struct xgene_dma_desc_sw*) ;
 int dma_pool_free (int ,struct xgene_dma_desc_sw*,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void xgene_dma_clean_descriptor(struct xgene_dma_chan *chan,
           struct xgene_dma_desc_sw *desc)
{
 list_del(&desc->node);
 chan_dbg(chan, "LD %p free\n", desc);
 dma_pool_free(chan->desc_pool, desc, desc->tx.phys);
}
