
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdma_txreq {int next_descq_idx; } ;
struct sdma_engine {int descq_head; int sdma_mask; int descq_tail; int tx_head; int ** tx_ring; } ;


 int SDMA_TXREQ_S_ABORTED ;
 int complete_tx (struct sdma_engine*,struct sdma_txreq*,int ) ;
 struct sdma_txreq* get_txhead (struct sdma_engine*) ;
 int sdma_desc_avail (struct sdma_engine*,int ) ;
 int sdma_descq_freecnt (struct sdma_engine*) ;
 int trace_hfi1_sdma_progress (struct sdma_engine*,int,int,struct sdma_txreq*) ;

__attribute__((used)) static void sdma_flush_descq(struct sdma_engine *sde)
{
 u16 head, tail;
 int progress = 0;
 struct sdma_txreq *txp = get_txhead(sde);






 head = sde->descq_head & sde->sdma_mask;
 tail = sde->descq_tail & sde->sdma_mask;
 while (head != tail) {

  head = ++sde->descq_head & sde->sdma_mask;

  if (txp && txp->next_descq_idx == head) {

   sde->tx_ring[sde->tx_head++ & sde->sdma_mask] = ((void*)0);
   complete_tx(sde, txp, SDMA_TXREQ_S_ABORTED);
   trace_hfi1_sdma_progress(sde, head, tail, txp);
   txp = get_txhead(sde);
  }
  progress++;
 }
 if (progress)
  sdma_desc_avail(sde, sdma_descq_freecnt(sde));
}
