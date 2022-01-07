
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct atmel_sha_dma {int nents; int last_sg_length; struct scatterlist* sg; int chan; } ;
struct atmel_sha_dev {int is_async; int resume; int dev; struct atmel_sha_dma dma_lch_in; } ;


 int DMA_TO_DEVICE ;
 int atmel_sha_wait_for_data_ready (struct atmel_sha_dev*,int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int ) ;
 int dmaengine_terminate_all (int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static void atmel_sha_dma_callback2(void *data)
{
 struct atmel_sha_dev *dd = data;
 struct atmel_sha_dma *dma = &dd->dma_lch_in;
 struct scatterlist *sg;
 int nents;

 dmaengine_terminate_all(dma->chan);
 dma_unmap_sg(dd->dev, dma->sg, dma->nents, DMA_TO_DEVICE);

 sg = dma->sg;
 for (nents = 0; nents < dma->nents - 1; ++nents)
  sg = sg_next(sg);
 sg->length = dma->last_sg_length;

 dd->is_async = 1;
 (void)atmel_sha_wait_for_data_ready(dd, dd->resume);
}
