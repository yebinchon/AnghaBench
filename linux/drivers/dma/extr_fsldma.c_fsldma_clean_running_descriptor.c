
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsldma_chan {int desc_pool; int ld_completed; } ;
struct TYPE_2__ {int phys; } ;
struct fsl_desc_sw {TYPE_1__ async_tx; int node; } ;


 int async_tx_test_ack (TYPE_1__*) ;
 int dma_pool_free (int ,struct fsl_desc_sw*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void fsldma_clean_running_descriptor(struct fsldma_chan *chan,
  struct fsl_desc_sw *desc)
{

 list_del(&desc->node);





 if (!async_tx_test_ack(&desc->async_tx)) {




  list_add_tail(&desc->node, &chan->ld_completed);
  return;
 }

 dma_pool_free(chan->desc_pool, desc, desc->async_tx.phys);
}
