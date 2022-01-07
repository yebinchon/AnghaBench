
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsldma_chan {int desc_pool; } ;
struct TYPE_2__ {int phys; } ;
struct fsl_desc_sw {TYPE_1__ async_tx; int node; } ;


 int chan_dbg (struct fsldma_chan*,char*,struct fsl_desc_sw*) ;
 int dma_pool_free (int ,struct fsl_desc_sw*,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void fsl_dma_free_descriptor(struct fsldma_chan *chan,
  struct fsl_desc_sw *desc)
{
 list_del(&desc->node);
 chan_dbg(chan, "LD %p free\n", desc);
 dma_pool_free(chan->desc_pool, desc, desc->async_tx.phys);
}
