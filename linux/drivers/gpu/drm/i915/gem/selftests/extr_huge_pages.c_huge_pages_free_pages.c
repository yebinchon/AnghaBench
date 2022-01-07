
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {struct scatterlist* sgl; } ;
struct scatterlist {int length; } ;


 int __free_pages (scalar_t__,int ) ;
 struct scatterlist* __sg_next (struct scatterlist*) ;
 int get_order (int ) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;
 scalar_t__ sg_page (struct scatterlist*) ;

__attribute__((used)) static void huge_pages_free_pages(struct sg_table *st)
{
 struct scatterlist *sg;

 for (sg = st->sgl; sg; sg = __sg_next(sg)) {
  if (sg_page(sg))
   __free_pages(sg_page(sg), get_order(sg->length));
 }

 sg_free_table(st);
 kfree(st);
}
