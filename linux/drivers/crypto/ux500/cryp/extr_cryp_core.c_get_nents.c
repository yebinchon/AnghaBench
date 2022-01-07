
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int get_nents(struct scatterlist *sg, int nbytes)
{
 int nents = 0;

 while (nbytes > 0) {
  nbytes -= sg->length;
  sg = sg_next(sg);
  nents++;
 }

 return nents;
}
