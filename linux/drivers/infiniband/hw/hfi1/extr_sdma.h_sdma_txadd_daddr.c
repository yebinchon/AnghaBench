
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdma_txreq {scalar_t__ num_desc; scalar_t__ desc_limit; } ;
struct hfi1_devdata {int dummy; } ;
typedef int dma_addr_t ;


 int SDMA_MAP_NONE ;
 int _sdma_txadd_daddr (struct hfi1_devdata*,int ,struct sdma_txreq*,int ,int ) ;
 int ext_coal_sdma_tx_descs (struct hfi1_devdata*,struct sdma_txreq*,int ,int *,int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int sdma_txadd_daddr(
 struct hfi1_devdata *dd,
 struct sdma_txreq *tx,
 dma_addr_t addr,
 u16 len)
{
 int rval;

 if ((unlikely(tx->num_desc == tx->desc_limit))) {
  rval = ext_coal_sdma_tx_descs(dd, tx, SDMA_MAP_NONE,
           ((void*)0), ((void*)0), 0, 0);
  if (rval <= 0)
   return rval;
 }

 return _sdma_txadd_daddr(dd, SDMA_MAP_NONE, tx, addr, len);
}
