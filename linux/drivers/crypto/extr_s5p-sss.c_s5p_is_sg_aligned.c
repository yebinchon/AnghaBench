
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;


 int AES_BLOCK_SIZE ;
 int IS_ALIGNED (int ,int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static bool s5p_is_sg_aligned(struct scatterlist *sg)
{
 while (sg) {
  if (!IS_ALIGNED(sg->length, AES_BLOCK_SIZE))
   return 0;
  sg = sg_next(sg);
 }

 return 1;
}
