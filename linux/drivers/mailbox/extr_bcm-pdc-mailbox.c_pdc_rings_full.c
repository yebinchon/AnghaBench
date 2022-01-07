
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pdc_state {int nrxpost; int ntxpost; int tx_ring_full; int txout; int txin; int rx_ring_full; int rxout; int rxin; } ;


 int NRXDACTIVE (int ,int ,int) ;
 int NTXDACTIVE (int ,int ,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool pdc_rings_full(struct pdc_state *pdcs, int tx_cnt, int rx_cnt)
{
 u32 rx_avail;
 u32 tx_avail;
 bool full = 0;


 rx_avail = pdcs->nrxpost - NRXDACTIVE(pdcs->rxin, pdcs->rxout,
           pdcs->nrxpost);
 if (unlikely(rx_cnt > rx_avail)) {
  pdcs->rx_ring_full++;
  full = 1;
 }

 if (likely(!full)) {
  tx_avail = pdcs->ntxpost - NTXDACTIVE(pdcs->txin, pdcs->txout,
            pdcs->ntxpost);
  if (unlikely(tx_cnt > tx_avail)) {
   pdcs->tx_ring_full++;
   full = 1;
  }
 }
 return full;
}
