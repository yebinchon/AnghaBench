
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdma_txreq {scalar_t__ num_desc; scalar_t__ desc_limit; int packet_len; } ;
struct hfi1_devdata {int sdma_pad_phys; } ;


 int SDMA_MAP_NONE ;
 int __sdma_txclean (struct hfi1_devdata*,struct sdma_txreq*) ;
 int _extend_sdma_tx_descs (struct hfi1_devdata*,struct sdma_txreq*) ;
 int _sdma_close_tx (struct hfi1_devdata*,struct sdma_txreq*) ;
 int make_tx_sdma_desc (struct sdma_txreq*,int ,int ,int) ;
 scalar_t__ unlikely (int) ;

int _pad_sdma_tx_descs(struct hfi1_devdata *dd, struct sdma_txreq *tx)
{
 int rval = 0;

 tx->num_desc++;
 if ((unlikely(tx->num_desc == tx->desc_limit))) {
  rval = _extend_sdma_tx_descs(dd, tx);
  if (rval) {
   __sdma_txclean(dd, tx);
   return rval;
  }
 }

 make_tx_sdma_desc(
  tx,
  SDMA_MAP_NONE,
  dd->sdma_pad_phys,
  sizeof(u32) - (tx->packet_len & (sizeof(u32) - 1)));
 _sdma_close_tx(dd, tx);
 return rval;
}
