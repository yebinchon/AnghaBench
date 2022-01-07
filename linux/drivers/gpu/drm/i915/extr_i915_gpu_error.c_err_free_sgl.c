
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int free_page (unsigned long) ;
 int kfree (int ) ;
 struct scatterlist* sg_chain_ptr (struct scatterlist*) ;
 int sg_is_chain (struct scatterlist*) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;
 int sg_virt (struct scatterlist*) ;

__attribute__((used)) static void err_free_sgl(struct scatterlist *sgl)
{
 while (sgl) {
  struct scatterlist *sg;

  for (sg = sgl; !sg_is_chain(sg); sg++) {
   kfree(sg_virt(sg));
   if (sg_is_last(sg))
    break;
  }

  sg = sg_is_last(sg) ? ((void*)0) : sg_chain_ptr(sg);
  free_page((unsigned long)sgl);
  sgl = sg;
 }
}
