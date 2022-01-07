
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct mtk_aes_dma {int nents; scalar_t__ remainder; struct scatterlist* sg; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static inline void mtk_aes_restore_sg(const struct mtk_aes_dma *dma)
{
 struct scatterlist *sg = dma->sg;
 int nents = dma->nents;

 if (!dma->remainder)
  return;

 while (--nents > 0 && sg)
  sg = sg_next(sg);

 if (!sg)
  return;

 sg->length += dma->remainder;
}
