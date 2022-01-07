
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct sdma_txreq {int next_descq_idx; } ;
struct sdma_engine {int descq_head; int sdma_mask; int idle_mask; int last_status; int descq_tail; int tx_head; int ** tx_ring; } ;


 int HEAD ;
 int READ_ONCE (int ) ;
 int SD (int ) ;
 int SDMA_TXREQ_S_OK ;
 int complete_tx (struct sdma_engine*,struct sdma_txreq*,int ) ;
 struct sdma_txreq* get_txhead (struct sdma_engine*) ;
 scalar_t__ read_sde_csr (struct sdma_engine*,int ) ;
 int sdma_desc_avail (struct sdma_engine*,int ) ;
 int sdma_descq_freecnt (struct sdma_engine*) ;
 int sdma_gethead (struct sdma_engine*) ;
 int trace_hfi1_sdma_progress (struct sdma_engine*,int,int,struct sdma_txreq*) ;

__attribute__((used)) static void sdma_make_progress(struct sdma_engine *sde, u64 status)
{
 struct sdma_txreq *txp = ((void*)0);
 int progress = 0;
 u16 hwhead, swhead;
 int idle_check_done = 0;

 hwhead = sdma_gethead(sde);







retry:
 txp = get_txhead(sde);
 swhead = sde->descq_head & sde->sdma_mask;
 trace_hfi1_sdma_progress(sde, hwhead, swhead, txp);
 while (swhead != hwhead) {

  swhead = ++sde->descq_head & sde->sdma_mask;


  if (txp && txp->next_descq_idx == swhead) {

   sde->tx_ring[sde->tx_head++ & sde->sdma_mask] = ((void*)0);
   complete_tx(sde, txp, SDMA_TXREQ_S_OK);

   txp = get_txhead(sde);
  }
  trace_hfi1_sdma_progress(sde, hwhead, swhead, txp);
  progress++;
 }
 if ((status & sde->idle_mask) && !idle_check_done) {
  u16 swtail;

  swtail = READ_ONCE(sde->descq_tail) & sde->sdma_mask;
  if (swtail != hwhead) {
   hwhead = (u16)read_sde_csr(sde, SD(HEAD));
   idle_check_done = 1;
   goto retry;
  }
 }

 sde->last_status = status;
 if (progress)
  sdma_desc_avail(sde, sdma_descq_freecnt(sde));
}
