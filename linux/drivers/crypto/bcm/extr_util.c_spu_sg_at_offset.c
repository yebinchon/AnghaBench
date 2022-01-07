
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;


 int EINVAL ;
 struct scatterlist* sg_next (struct scatterlist*) ;

int spu_sg_at_offset(struct scatterlist *sg, unsigned int skip,
       struct scatterlist **sge, unsigned int *sge_offset)
{

 unsigned int index = 0;

 unsigned int next_index;

 next_index = sg->length;
 while (next_index <= skip) {
  sg = sg_next(sg);
  index = next_index;
  if (!sg)
   return -EINVAL;
  next_index += sg->length;
 }

 *sge_offset = skip - index;
 *sge = sg;
 return 0;
}
