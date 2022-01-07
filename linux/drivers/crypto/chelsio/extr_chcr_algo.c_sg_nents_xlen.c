
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 scalar_t__ DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int sg_nents_xlen(struct scatterlist *sg, unsigned int reqlen,
    unsigned int entlen,
    unsigned int skip)
{
 int nents = 0;
 unsigned int less;
 unsigned int skip_len = 0;

 while (sg && skip) {
  if (sg_dma_len(sg) <= skip) {
   skip -= sg_dma_len(sg);
   skip_len = 0;
   sg = sg_next(sg);
  } else {
   skip_len = skip;
   skip = 0;
  }
 }

 while (sg && reqlen) {
  less = min(reqlen, sg_dma_len(sg) - skip_len);
  nents += DIV_ROUND_UP(less, entlen);
  reqlen -= less;
  skip_len = 0;
  sg = sg_next(sg);
 }
 return nents;
}
