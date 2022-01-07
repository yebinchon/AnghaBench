
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_tx_desc {scalar_t__ dma_addr; } ;
struct ib_device {int dummy; } ;


 int DMA_TO_DEVICE ;
 int ISER_HEADERS_LEN ;
 int ib_dma_unmap_single (struct ib_device*,scalar_t__,int ,int ) ;
 int isert_dbg (char*) ;

__attribute__((used)) static void
isert_unmap_tx_desc(struct iser_tx_desc *tx_desc, struct ib_device *ib_dev)
{
 if (tx_desc->dma_addr != 0) {
  isert_dbg("unmap single for tx_desc->dma_addr\n");
  ib_dma_unmap_single(ib_dev, tx_desc->dma_addr,
        ISER_HEADERS_LEN, DMA_TO_DEVICE);
  tx_desc->dma_addr = 0;
 }
}
