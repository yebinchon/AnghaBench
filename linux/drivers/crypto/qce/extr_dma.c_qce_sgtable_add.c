
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {struct scatterlist* sgl; } ;
struct scatterlist {int offset; int length; } ;


 int EINVAL ;
 struct scatterlist* ERR_PTR (int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;

struct scatterlist *
qce_sgtable_add(struct sg_table *sgt, struct scatterlist *new_sgl)
{
 struct scatterlist *sg = sgt->sgl, *sg_last = ((void*)0);

 while (sg) {
  if (!sg_page(sg))
   break;
  sg = sg_next(sg);
 }

 if (!sg)
  return ERR_PTR(-EINVAL);

 while (new_sgl && sg) {
  sg_set_page(sg, sg_page(new_sgl), new_sgl->length,
       new_sgl->offset);
  sg_last = sg;
  sg = sg_next(sg);
  new_sgl = sg_next(new_sgl);
 }

 return sg_last;
}
