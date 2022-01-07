
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;


 int sg_mark_end (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int sahara_walk_and_recalc(struct scatterlist *sg, unsigned int nbytes)
{
 if (!sg || !sg->length)
  return nbytes;

 while (nbytes && sg) {
  if (nbytes <= sg->length) {
   sg->length = nbytes;
   sg_mark_end(sg);
   break;
  }
  nbytes -= sg->length;
  sg = sg_next(sg);
 }

 return nbytes;
}
