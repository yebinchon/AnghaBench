
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {size_t offset; size_t length; } ;
struct mtk_aes_dma {int nents; size_t remainder; } ;


 int AES_BLOCK_SIZE ;
 int IS_ALIGNED (size_t,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static bool mtk_aes_check_aligned(struct scatterlist *sg, size_t len,
      struct mtk_aes_dma *dma)
{
 int nents;

 if (!IS_ALIGNED(len, AES_BLOCK_SIZE))
  return 0;

 for (nents = 0; sg; sg = sg_next(sg), ++nents) {
  if (!IS_ALIGNED(sg->offset, sizeof(u32)))
   return 0;

  if (len <= sg->length) {
   if (!IS_ALIGNED(len, AES_BLOCK_SIZE))
    return 0;

   dma->nents = nents + 1;
   dma->remainder = sg->length - len;
   sg->length = len;
   return 1;
  }

  if (!IS_ALIGNED(sg->length, AES_BLOCK_SIZE))
   return 0;

  len -= sg->length;
 }

 return 0;
}
