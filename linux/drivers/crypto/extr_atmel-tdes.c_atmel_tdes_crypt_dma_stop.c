
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int flags; size_t dma_size; int buflen; int buf_out; int out_offset; int out_sg; int dma_addr_out; int dev; int in_sg; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int TDES_FLAGS_DMA ;
 int TDES_FLAGS_FAST ;
 size_t atmel_tdes_sg_copy (int *,int *,int ,int ,size_t,int) ;
 int dma_sync_single_for_device (int ,int ,size_t,int ) ;
 int dma_unmap_sg (int ,int ,int,int ) ;
 int pr_err (char*,size_t) ;

__attribute__((used)) static int atmel_tdes_crypt_dma_stop(struct atmel_tdes_dev *dd)
{
 int err = -EINVAL;
 size_t count;

 if (dd->flags & TDES_FLAGS_DMA) {
  err = 0;
  if (dd->flags & TDES_FLAGS_FAST) {
   dma_unmap_sg(dd->dev, dd->out_sg, 1, DMA_FROM_DEVICE);
   dma_unmap_sg(dd->dev, dd->in_sg, 1, DMA_TO_DEVICE);
  } else {
   dma_sync_single_for_device(dd->dev, dd->dma_addr_out,
    dd->dma_size, DMA_FROM_DEVICE);


   count = atmel_tdes_sg_copy(&dd->out_sg, &dd->out_offset,
    dd->buf_out, dd->buflen, dd->dma_size, 1);
   if (count != dd->dma_size) {
    err = -EINVAL;
    pr_err("not all data converted: %zu\n", count);
   }
  }
 }
 return err;
}
