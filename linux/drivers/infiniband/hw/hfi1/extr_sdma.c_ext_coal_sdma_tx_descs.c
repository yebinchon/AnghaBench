
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sdma_txreq {int coalesce_buf; int coalesce_idx; int tlen; int packet_len; int desc_limit; } ;
struct page {int dummy; } ;
struct hfi1_devdata {TYPE_1__* pcidev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOSPC ;
 int MAX_DESC ;
 int SDMA_MAP_NONE ;
 int SDMA_MAP_PAGE ;
 int SDMA_MAP_SINGLE ;
 scalar_t__ WARN_ON (int) ;
 int __sdma_txclean (struct hfi1_devdata*,struct sdma_txreq*) ;
 int _extend_sdma_tx_descs (struct hfi1_devdata*,struct sdma_txreq*) ;
 int _sdma_txadd_daddr (struct hfi1_devdata*,int ,struct sdma_txreq*,int ,int) ;
 int dma_map_single (int *,int,int,int ) ;
 int dma_mapping_error (int *,int ) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (int,void*,int) ;
 int memset (int,int ,int) ;
 scalar_t__ unlikely (int ) ;

int ext_coal_sdma_tx_descs(struct hfi1_devdata *dd, struct sdma_txreq *tx,
      int type, void *kvaddr, struct page *page,
      unsigned long offset, u16 len)
{
 int pad_len, rval;
 dma_addr_t addr;

 rval = _extend_sdma_tx_descs(dd, tx);
 if (rval) {
  __sdma_txclean(dd, tx);
  return rval;
 }


 if (tx->coalesce_buf) {
  if (type == SDMA_MAP_NONE) {
   __sdma_txclean(dd, tx);
   return -EINVAL;
  }

  if (type == SDMA_MAP_PAGE) {
   kvaddr = kmap(page);
   kvaddr += offset;
  } else if (WARN_ON(!kvaddr)) {
   __sdma_txclean(dd, tx);
   return -EINVAL;
  }

  memcpy(tx->coalesce_buf + tx->coalesce_idx, kvaddr, len);
  tx->coalesce_idx += len;
  if (type == SDMA_MAP_PAGE)
   kunmap(page);


  if (tx->tlen - tx->coalesce_idx)
   return 0;


  pad_len = tx->packet_len & (sizeof(u32) - 1);
  if (pad_len) {
   pad_len = sizeof(u32) - pad_len;
   memset(tx->coalesce_buf + tx->coalesce_idx, 0, pad_len);

   tx->packet_len += pad_len;
   tx->tlen += pad_len;
  }


  addr = dma_map_single(&dd->pcidev->dev,
          tx->coalesce_buf,
          tx->tlen,
          DMA_TO_DEVICE);

  if (unlikely(dma_mapping_error(&dd->pcidev->dev, addr))) {
   __sdma_txclean(dd, tx);
   return -ENOSPC;
  }


  tx->desc_limit = MAX_DESC;
  return _sdma_txadd_daddr(dd, SDMA_MAP_SINGLE, tx,
      addr, tx->tlen);
 }

 return 1;
}
