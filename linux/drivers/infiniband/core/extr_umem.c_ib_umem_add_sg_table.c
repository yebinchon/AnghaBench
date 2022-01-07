
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;
struct page {int dummy; } ;


 unsigned int PAGE_SHIFT ;
 unsigned long page_to_pfn (struct page*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,struct page*,unsigned long,int ) ;

__attribute__((used)) static struct scatterlist *ib_umem_add_sg_table(struct scatterlist *sg,
      struct page **page_list,
      unsigned long npages,
      unsigned int max_seg_sz,
      int *nents)
{
 unsigned long first_pfn;
 unsigned long i = 0;
 bool update_cur_sg = 0;
 bool first = !sg_page(sg);




 if (!first && (page_to_pfn(sg_page(sg)) + (sg->length >> PAGE_SHIFT) ==
         page_to_pfn(page_list[0])))
  update_cur_sg = 1;

 while (i != npages) {
  unsigned long len;
  struct page *first_page = page_list[i];

  first_pfn = page_to_pfn(first_page);




  for (len = 0; i != npages &&
         first_pfn + len == page_to_pfn(page_list[i]) &&
         len < (max_seg_sz >> PAGE_SHIFT);
       len++)
   i++;


  if (update_cur_sg) {
   if ((max_seg_sz - sg->length) >= (len << PAGE_SHIFT)) {
    sg_set_page(sg, sg_page(sg),
         sg->length + (len << PAGE_SHIFT),
         0);
    update_cur_sg = 0;
    continue;
   }
   update_cur_sg = 0;
  }


  if (!first)
   sg = sg_next(sg);

  (*nents)++;
  sg_set_page(sg, first_page, len << PAGE_SHIFT, 0);
  first = 0;
 }

 return sg;
}
