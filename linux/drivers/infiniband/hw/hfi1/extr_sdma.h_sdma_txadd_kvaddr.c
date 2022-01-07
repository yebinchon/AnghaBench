
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sdma_txreq {scalar_t__ num_desc; scalar_t__ desc_limit; } ;
struct hfi1_devdata {TYPE_1__* pcidev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOSPC ;
 int SDMA_MAP_SINGLE ;
 int __sdma_txclean (struct hfi1_devdata*,struct sdma_txreq*) ;
 int _sdma_txadd_daddr (struct hfi1_devdata*,int ,struct sdma_txreq*,int ,int ) ;
 int dma_map_single (int *,void*,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 int ext_coal_sdma_tx_descs (struct hfi1_devdata*,struct sdma_txreq*,int ,void*,int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int sdma_txadd_kvaddr(
 struct hfi1_devdata *dd,
 struct sdma_txreq *tx,
 void *kvaddr,
 u16 len)
{
 dma_addr_t addr;
 int rval;

 if ((unlikely(tx->num_desc == tx->desc_limit))) {
  rval = ext_coal_sdma_tx_descs(dd, tx, SDMA_MAP_SINGLE,
           kvaddr, ((void*)0), 0, len);
  if (rval <= 0)
   return rval;
 }

 addr = dma_map_single(
         &dd->pcidev->dev,
         kvaddr,
         len,
         DMA_TO_DEVICE);

 if (unlikely(dma_mapping_error(&dd->pcidev->dev, addr))) {
  __sdma_txclean(dd, tx);
  return -ENOSPC;
 }

 return _sdma_txadd_daddr(
   dd, SDMA_MAP_SINGLE, tx, addr, len);
}
