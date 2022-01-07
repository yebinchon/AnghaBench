
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ablkcipher_request {scalar_t__ src; scalar_t__ dst; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (struct device*,scalar_t__,int ,int ) ;
 int sg_nents (scalar_t__) ;

void chcr_cipher_dma_unmap(struct device *dev,
      struct ablkcipher_request *req)
{
 if (req->src == req->dst) {
  dma_unmap_sg(dev, req->src, sg_nents(req->src),
       DMA_BIDIRECTIONAL);
 } else {
  dma_unmap_sg(dev, req->src, sg_nents(req->src),
       DMA_TO_DEVICE);
  dma_unmap_sg(dev, req->dst, sg_nents(req->dst),
       DMA_FROM_DEVICE);
 }
}
