
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int dummy; } ;
struct talitos_edesc {int src_nents; int dst_nents; scalar_t__ buf; scalar_t__ dma_link_tbl; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_sync_single_for_device (struct device*,scalar_t__,unsigned int,int ) ;
 int dma_unmap_sg (struct device*,struct scatterlist*,unsigned int,int ) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 int sg_pcopy_from_buffer (struct scatterlist*,unsigned int,scalar_t__,unsigned int,unsigned int) ;

__attribute__((used)) static void talitos_sg_unmap(struct device *dev,
        struct talitos_edesc *edesc,
        struct scatterlist *src,
        struct scatterlist *dst,
        unsigned int len, unsigned int offset)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 bool is_sec1 = has_ftr_sec1(priv);
 unsigned int src_nents = edesc->src_nents ? : 1;
 unsigned int dst_nents = edesc->dst_nents ? : 1;

 if (is_sec1 && dst && dst_nents > 1) {
  dma_sync_single_for_device(dev, edesc->dma_link_tbl + offset,
        len, DMA_FROM_DEVICE);
  sg_pcopy_from_buffer(dst, dst_nents, edesc->buf + offset, len,
         offset);
 }
 if (src != dst) {
  if (src_nents == 1 || !is_sec1)
   dma_unmap_sg(dev, src, src_nents, DMA_TO_DEVICE);

  if (dst && (dst_nents == 1 || !is_sec1))
   dma_unmap_sg(dev, dst, dst_nents, DMA_FROM_DEVICE);
 } else if (src_nents == 1 || !is_sec1) {
  dma_unmap_sg(dev, src, src_nents, DMA_BIDIRECTIONAL);
 }
}
