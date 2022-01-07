
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;


 int EFAULT ;
 int HASH_DMA_ALIGN_SIZE ;
 int IS_ALIGNED (scalar_t__,int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int hash_get_nents(struct scatterlist *sg, int size, bool *aligned)
{
 int nents = 0;
 bool aligned_data = 1;

 while (size > 0 && sg) {
  nents++;
  size -= sg->length;


  if ((aligned && !IS_ALIGNED(sg->offset, HASH_DMA_ALIGN_SIZE)) ||
      (!IS_ALIGNED(sg->length, HASH_DMA_ALIGN_SIZE) && size > 0))
   aligned_data = 0;

  sg = sg_next(sg);
 }

 if (aligned)
  *aligned = aligned_data;

 if (size != 0)
  return -EFAULT;

 return nents;
}
