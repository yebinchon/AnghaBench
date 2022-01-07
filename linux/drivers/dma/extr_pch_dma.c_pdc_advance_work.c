
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_dma_chan {int active_list; } ;


 scalar_t__ list_empty (int *) ;
 scalar_t__ list_is_singular (int *) ;
 int pdc_chain_complete (struct pch_dma_chan*,int ) ;
 int pdc_complete_all (struct pch_dma_chan*) ;
 int pdc_dostart (struct pch_dma_chan*,int ) ;
 int pdc_first_active (struct pch_dma_chan*) ;

__attribute__((used)) static void pdc_advance_work(struct pch_dma_chan *pd_chan)
{
 if (list_empty(&pd_chan->active_list) ||
  list_is_singular(&pd_chan->active_list)) {
  pdc_complete_all(pd_chan);
 } else {
  pdc_chain_complete(pd_chan, pdc_first_active(pd_chan));
  pdc_dostart(pd_chan, pdc_first_active(pd_chan));
 }
}
