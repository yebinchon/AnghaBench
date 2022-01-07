
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sg; int nents; } ;
struct atmel_aes_dev {int total; int buf; int real_dst; int aligned_sg; TYPE_1__ dst; TYPE_1__ src; int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int atmel_aes_restore_sg (TYPE_1__*) ;
 int dma_unmap_sg (int ,int *,int ,int ) ;
 int sg_copy_from_buffer (int ,int ,int ,int ) ;
 int sg_nents (int ) ;

__attribute__((used)) static void atmel_aes_unmap(struct atmel_aes_dev *dd)
{
 if (dd->src.sg == dd->dst.sg) {
  dma_unmap_sg(dd->dev, dd->src.sg, dd->src.nents,
        DMA_BIDIRECTIONAL);

  if (dd->src.sg != &dd->aligned_sg)
   atmel_aes_restore_sg(&dd->src);
 } else {
  dma_unmap_sg(dd->dev, dd->dst.sg, dd->dst.nents,
        DMA_FROM_DEVICE);

  if (dd->dst.sg != &dd->aligned_sg)
   atmel_aes_restore_sg(&dd->dst);

  dma_unmap_sg(dd->dev, dd->src.sg, dd->src.nents,
        DMA_TO_DEVICE);

  if (dd->src.sg != &dd->aligned_sg)
   atmel_aes_restore_sg(&dd->src);
 }

 if (dd->dst.sg == &dd->aligned_sg)
  sg_copy_from_buffer(dd->real_dst, sg_nents(dd->real_dst),
        dd->buf, dd->total);
}
