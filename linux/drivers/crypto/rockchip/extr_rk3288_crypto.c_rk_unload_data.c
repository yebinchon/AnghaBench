
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct rk_crypto_info {int dev; struct scatterlist sg_tmp; struct scatterlist* sg_dst; scalar_t__ aligned; struct scatterlist* sg_src; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int ) ;

__attribute__((used)) static void rk_unload_data(struct rk_crypto_info *dev)
{
 struct scatterlist *sg_in, *sg_out;

 sg_in = dev->aligned ? dev->sg_src : &dev->sg_tmp;
 dma_unmap_sg(dev->dev, sg_in, 1, DMA_TO_DEVICE);

 if (dev->sg_dst) {
  sg_out = dev->aligned ? dev->sg_dst : &dev->sg_tmp;
  dma_unmap_sg(dev->dev, sg_out, 1, DMA_FROM_DEVICE);
 }
}
