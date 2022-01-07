
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (struct device*,struct scatterlist*,int,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,int,int ) ;

__attribute__((used)) static void caam_unmap(struct device *dev, struct scatterlist *src,
         struct scatterlist *dst, int src_nents,
         int dst_nents,
         dma_addr_t iv_dma, int ivsize, dma_addr_t sec4_sg_dma,
         int sec4_sg_bytes)
{
 if (dst != src) {
  if (src_nents)
   dma_unmap_sg(dev, src, src_nents, DMA_TO_DEVICE);
  if (dst_nents)
   dma_unmap_sg(dev, dst, dst_nents, DMA_FROM_DEVICE);
 } else {
  dma_unmap_sg(dev, src, src_nents, DMA_BIDIRECTIONAL);
 }

 if (iv_dma)
  dma_unmap_single(dev, iv_dma, ivsize, DMA_BIDIRECTIONAL);
 if (sec4_sg_bytes)
  dma_unmap_single(dev, sec4_sg_dma, sec4_sg_bytes,
     DMA_TO_DEVICE);
}
