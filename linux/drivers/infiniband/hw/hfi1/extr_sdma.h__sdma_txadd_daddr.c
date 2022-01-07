
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sdma_txreq {scalar_t__ tlen; int packet_len; int num_desc; } ;
struct hfi1_devdata {int dummy; } ;
typedef int dma_addr_t ;


 int WARN_ON (int) ;
 int _pad_sdma_tx_descs (struct hfi1_devdata*,struct sdma_txreq*) ;
 int _sdma_close_tx (struct hfi1_devdata*,struct sdma_txreq*) ;
 int make_tx_sdma_desc (struct sdma_txreq*,int,int ,scalar_t__) ;

__attribute__((used)) static inline int _sdma_txadd_daddr(
 struct hfi1_devdata *dd,
 int type,
 struct sdma_txreq *tx,
 dma_addr_t addr,
 u16 len)
{
 int rval = 0;

 make_tx_sdma_desc(
  tx,
  type,
  addr, len);
 WARN_ON(len > tx->tlen);
 tx->tlen -= len;

 if (!tx->tlen) {
  if (tx->packet_len & (sizeof(u32) - 1)) {
   rval = _pad_sdma_tx_descs(dd, tx);
   if (rval)
    return rval;
  } else {
   _sdma_close_tx(dd, tx);
  }
 }
 tx->num_desc++;
 return rval;
}
