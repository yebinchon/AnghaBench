
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {scalar_t__ buf_in; scalar_t__ buf_out; int buflen; int dma_addr_in; int dev; int dma_addr_out; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void atmel_tdes_buff_cleanup(struct atmel_tdes_dev *dd)
{
 dma_unmap_single(dd->dev, dd->dma_addr_out, dd->buflen,
    DMA_FROM_DEVICE);
 dma_unmap_single(dd->dev, dd->dma_addr_in, dd->buflen,
  DMA_TO_DEVICE);
 free_page((unsigned long)dd->buf_out);
 free_page((unsigned long)dd->buf_in);
}
